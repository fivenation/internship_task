import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

class CustomFormWidget extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const CustomFormWidget({super.key, required this.hint, required this.controller});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: colorScheme.formBackgroundColor,
      ),
      child: TextField(
        controller: controller,
        style: textTheme.displayLarge!.copyWith(color: colorScheme.primaryOnLightTextColor, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Введите имя",
          label: Text(
            hint,
            style: textTheme.displayLarge!.copyWith(color: colorScheme.secondaryTextColor,),
          ),
        ),
      )
    );
  }

}