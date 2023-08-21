import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:internship_task_1/domain/dependencies/service_locator.config.dart';
import 'package:internship_task_1/domain/dependencies/service_locator.dart';
import 'package:internship_task_1/presentation/application.dart';

import 'firebase_options.dart';

void main() => runZonedGuarded(() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  getIt.init(environment: "dev");
  runApp(const RunApplication());
}, (error, stackTrace) {
  print(error);
});

// Устаревший main - возникали ошибки, потому решено убрать
/*
Future<void> main() async {
  Zone.current.run(() {
    WidgetsFlutterBinding.ensureInitialized();
    getIt.init(environment: "dev");
    runApp(const RunApplication());
  });
}
 */

