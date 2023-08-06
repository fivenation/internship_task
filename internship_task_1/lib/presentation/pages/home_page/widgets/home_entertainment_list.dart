import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/models/entertainment_data/entertainment_data.dart';
import 'package:internship_task_1/presentation/pages/home_page/widgets/home_entertainment_item.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

class HomeEntertainmentList extends StatefulWidget {
  const HomeEntertainmentList({Key? key, required this.entertainments, }) : super(key: key);

  final List<EntertainmentData> entertainments;

  @override
  _HomeEntertainmentListState createState() => _HomeEntertainmentListState();
}

class _HomeEntertainmentListState extends State<HomeEntertainmentList> {
  static const int countOnCollapsed = 2;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListView.separated(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(height: 16.h,),
            itemBuilder: (context, index) => HomeEntertainmentItem(item: widget.entertainments[index]),
            itemCount: isExpanded ? widget.entertainments.length : countOnCollapsed,
          ),

          /// В случае, если элементов меню меньше, чем 3 (countOnColapsed + 1), то нет смысла в
          /// кнопке Свернуть\Развернуть, поэтому не отображаем, если это так
          widget.entertainments.length > countOnCollapsed ? GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 10.h, top: 16.h),
              alignment: Alignment.center,
              child: Text(
                isExpanded ? "Свернуть ▲" : "Развернуть ▼",
                style: textTheme.bodyLarge!.copyWith(color: colorScheme.primaryOnLightTextColor, decoration: TextDecoration.underline),
              ),
            ),
          ) : const SizedBox.shrink(),
        ],
      ),
    );
  }

}