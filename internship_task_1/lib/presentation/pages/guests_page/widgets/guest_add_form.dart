import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/models/guest_data/guest_data.dart';
import 'package:internship_task_1/presentation/components/form_widget.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

class GuestAddForm extends StatefulWidget {
  GuestAddForm({super.key, required this.onSubmit});

  final Function(GuestData guestData) onSubmit;

  @override
  State<GuestAddForm> createState() => _GuestAddFormState();
}

class _GuestAddFormState extends State<GuestAddForm> {
  final TextEditingController _firstnameController = TextEditingController();

  final TextEditingController _surnameController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _statusController = TextEditingController();

  int? _datePicker;

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
          Container(
            margin: EdgeInsets.only(top: 12.h, bottom: 20.h),
            height: 4.h,
            width: 35.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.r),
              color: const Color(0xFFE7E7EF),
            ),
          ),

          // FORM
          CustomFormWidget(hint: "Имя", controller: _firstnameController,),
          CustomFormWidget(hint: "Фамилия", controller: _surnameController,),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
              margin: EdgeInsets.only(bottom: 12.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: colorScheme.formBackgroundColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _datePicker == null ? "Дата рождения" : millisecondsFormatter(_datePicker!),
                    style: textTheme.displayLarge!.copyWith(color: colorScheme.secondaryTextColor),
                  ),
                  InkWell(
                    onTap: () async {
                      final curDate = DateTime.fromMillisecondsSinceEpoch(_datePicker??DateTime.now().millisecondsSinceEpoch);
                      final DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: curDate,
                          firstDate: DateTime.fromMillisecondsSinceEpoch(-946771200000),
                          lastDate: DateTime(DateTime.now().year + 10),
                          helpText: curDate.year.toString(),
                          initialEntryMode: DatePickerEntryMode.calendarOnly
                      );
                      setState(() {
                        _datePicker = picked?.millisecondsSinceEpoch;
                      });
                    },
                    child: Icon(
                      size: 24.r,
                      Icons.calendar_today_outlined,
                      color: colorScheme.secondaryTextColor,
                    ),
                  ),
                ],
              )
          ),
          CustomFormWidget(hint: "Телефон", controller: _phoneController,),
          CustomFormWidget(hint: "Профессия", controller: _statusController,),

          // BUTTON
          OutlinedButton(
            onPressed: () {
              widget.onSubmit(GuestData(
                id: _firstnameController.text,
                surname: _surnameController.text,
                firstname: _firstnameController.text,
                age: _datePicker??DateTime.now().microsecondsSinceEpoch,
                status: _statusController.text,
                phone: _phoneController.text,
              ));
              Navigator.of(context).pop();
            },
            style: theme.outlinedButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all(colorScheme.buttonColor_2)),
            child: Text(
              "Записаться",
              style: textTheme.displayLarge!.copyWith(color: colorScheme.primaryOnDarkTextColor),
            ),
          ),
        ],
      ),
    );
  }

  String millisecondsFormatter(int value) {
    final data = DateTime.fromMillisecondsSinceEpoch(value);
    return "${data.day}.${data.month}.${data.year}";
  }
}