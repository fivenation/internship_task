import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internship_task_1/domain/dependencies/service_locator.config.dart';
import 'package:internship_task_1/domain/dependencies/service_locator.dart';
import 'package:internship_task_1/presentation/application.dart';

Future<void> main() async {
  Zone.current.run(() {
    WidgetsFlutterBinding.ensureInitialized();
    getIt.init(environment: "test");
    runApp(RunApplication());
  });
}

