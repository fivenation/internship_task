import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/dependencies/service_locator.dart';
import 'package:internship_task_1/presentation/pages/landing.dart';
import 'package:internship_task_1/presentation/theme/theme_data.dart';

import 'components/custom_progress_indicator.dart';

class RunApplication extends StatelessWidget {
  const RunApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(375 , 812),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(

          // THEME
          theme: AppTheme.lightTheme,

          // HOME
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
      },
    );
  }
  
}