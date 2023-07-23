import 'package:flutter/material.dart';
import 'package:internship_task_1/domain/bloc/place_bloc/place_bloc.dart';
import 'package:internship_task_1/domain/dependencies/service_locator.dart';
import 'package:internship_task_1/presentation/components/custom_progress_indicator.dart';
import 'package:internship_task_1/presentation/pages/home_page/home_page.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placeBloc = getIt<PlaceBloc>()..add(const PlaceEvent.load());
    return StreamProvider<PlaceState>.value(
        value: placeBloc.stream,
        initialData: placeBloc.state,
        child: Consumer<PlaceState>(
          builder: (BuildContext context, state, _) {
            return state.when(
              loading: () => const CustomProgressIndicator(),
              successful: (place) => HomePage(placeData: place,),
            );
          },
        )
    );
  }
}