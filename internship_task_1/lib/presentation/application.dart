import 'package:flutter/material.dart';
import 'package:internship_task_1/data/repository/repository_interface.dart';
import 'package:internship_task_1/domain/dependencies/service_locator.dart';
import 'package:internship_task_1/presentation/pages/landing.dart';

import 'components/custom_progress_indicator.dart';

class RunApplication extends StatelessWidget {
  const RunApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final repo = getIt<Repository>();
    return MaterialApp(
      home: FutureBuilder(
        future: getIt.allReady(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.hasData) {
            return const LandingPage();
          } else {
            return const CustomProgressIndicator();
          }
        },
      ),
    );
  }
  
}