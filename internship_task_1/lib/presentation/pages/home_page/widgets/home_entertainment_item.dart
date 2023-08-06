import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/models/entertainment_data/entertainment_data.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

class HomeEntertainmentItem extends StatelessWidget {
  HomeEntertainmentItem({Key? key, required this.item, }) : super(key: key);

  final EntertainmentData item;

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
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //height: 42.h,
                  //width: 42.w,
                  padding: EdgeInsets.only(right: 12.w),
                  child: CircleAvatar(
                    radius: 21.r,
                    backgroundImage: NetworkImage(item.iconUrl),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: textTheme.bodyLarge!.copyWith(color: colorScheme.primaryOnLightTextColor, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
                      ),
                      Text(
                        item.description,
                        style: textTheme.bodyLarge!.copyWith(color: colorScheme.secondaryTextColor, overflow: TextOverflow.fade,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Container(
          height: 24.h,
          width: 24.w,
          child: InkWell(
            onTap: () {

            },
            child: SizedBox(
              child: Icon(
                size: 12.w,
                Icons.arrow_forward_ios,
                color: colorScheme.secondaryTextColor,
              ),
            ),
          ),
        )
      ],
    );
  }

}