import 'package:flutter/material.dart';

class RunApplication extends StatelessWidget {
  const RunApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Text('hello world'),
      ),
    );
  }
  
}