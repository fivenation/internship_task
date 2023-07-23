import 'package:flutter/material.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<AppColorScheme>()!;
    return Container(
      color: colorScheme.primaryColor,
      child: Center(
        child: CircularProgressIndicator(
          color: colorScheme.buttonColor_1,
        ),
      ),
    );
  }
}