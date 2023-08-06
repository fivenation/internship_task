import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/models/wish_data/wish_data.dart';
import 'package:internship_task_1/presentation/components/form_widget.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

class WishAddForm extends StatelessWidget {
  WishAddForm({super.key, required this.onSubmit});

  final Function(WishData data) onSubmit;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;

    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomFormWidget(hint: "Название", controller: _titleController,),
          CustomFormWidget(hint: "Ссылка", controller: _urlController,),

          // BUTTON
          OutlinedButton(
            onPressed: () {
              onSubmit(WishData(
                id: _titleController.text,
                title: _titleController.text,
                url: _urlController.text,
                isBooked: false,
              ));
              Navigator.of(context).pop();
            },
            style: theme.outlinedButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all(colorScheme.buttonColor_2)),
            child: Text(
              "Добавить подарок",
              style: textTheme.displayLarge!.copyWith(color: colorScheme.primaryOnDarkTextColor),
            ),
          ),
        ],
      ),
    );
  }
}