import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/models/guest_data/guest_data.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

class GuestListItem extends StatelessWidget {
  const GuestListItem({Key? key, required this.item, required this.onDelete, }) : super(key: key);

  final Function onDelete;

  final GuestData item;

  int yearsFromMicroseconds(int value) {
    return (value - DateTime.now().millisecondsSinceEpoch ).abs() ~/ (24*3600*365.25*1000);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(right: 12.w),
                child:
                item.avatarUrl == null ? CircleAvatar(
                  radius: 32.r,
                  backgroundImage: const AssetImage('assets/images/guest_avatar.png'),
                ) : CircleAvatar(
                  radius: 32.r,
                  backgroundImage: NetworkImage(item.avatarUrl!),
                )
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${item.firstname} ${item.surname}",
                      style: textTheme.bodyLarge!.copyWith(color: colorScheme.primaryOnLightTextColor, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
                    ),
                    Text(
                      yearsFromMicroseconds(item.age).toString(),
                      style: textTheme.bodySmall!.copyWith(color: colorScheme.secondaryTextColor, overflow: TextOverflow.fade,),
                    ),
                    Text(
                      item.status,
                      style: textTheme.bodyLarge!.copyWith(color: colorScheme.secondaryTextColor, overflow: TextOverflow.fade,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 24.h,
          width: 24.w,
          child: InkWell(
            onTap: () {
              onDelete();
            },
            child: SizedBox(
              child: Icon(
                size: 24.w,
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ),
        )
      ],
    );
  }

}