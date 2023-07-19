import 'package:flutter/cupertino.dart';
import 'package:internship_task_1/domain/bloc/place_bloc/place_bloc.dart';
import 'package:internship_task_1/domain/dependencies/service_locator.dart';
import 'package:internship_task_1/models/place_data/place_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.placeData}) : super(key: key);
  final PlaceData placeData;

  @override
  Widget build(BuildContext context) {
    return Text(placeData.toString());
  }

}