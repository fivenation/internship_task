import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/dependencies/service_locator.dart';
import 'package:internship_task_1/presentation/pages/home_page/home_page.dart';
import 'package:internship_task_1/presentation/theme/theme_data.dart';

import 'components/custom_progress_indicator.dart';

class RunApplication extends StatefulWidget {
  const RunApplication({Key? key}) : super(key: key);

  @override
  State<RunApplication> createState() => _RunApplicationState();
}

class _RunApplicationState extends State<RunApplication> {
  //final appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(375 , 812),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          // NAVIGATION

          // THEME
          theme: AppTheme.lightTheme,

          // HOME
          home: FutureBuilder(
            future: getIt.allReady(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if(snapshot.hasData) {
                return const HomePage();
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