import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/models/product_data/product_data.dart';
import 'package:internship_task_1/presentation/components/animated_page_route_builder.dart';
import 'package:internship_task_1/presentation/pages/home_page/widgets/home_menu_item.dart';
import 'package:internship_task_1/presentation/pages/product_page/product_page.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

class HomeMenuGrid extends StatefulWidget {
  const HomeMenuGrid({Key? key, required this.menu}) : super(key: key);

  final List<ProductData> menu;

  @override
  _HomeMenuGridState createState() => _HomeMenuGridState();
}

class _HomeMenuGridState extends State<HomeMenuGrid> {
  bool isExpanded = false;
  static const int countOnCollapsed = 2;

  Widget _itemBuilder(BuildContext context, int index) {
    return HomeMenuItem(
      item: widget.menu[index],
      isEvenNumber: (index + 1) % 2 == 0 ? true : false,
      onTap: () {
        Navigator.push(
          context,
          AnimatedPageRoute(
            page: ProductPage(item: widget.menu[index],),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GridView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: isExpanded ? widget.menu.length : countOnCollapsed,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: countOnCollapsed),
            itemBuilder: _itemBuilder,
            shrinkWrap: true,
          ),

          /// В случае, если элементов меню меньше, чем 3 (countOnColapsed + 1), то нет смысла в
          /// кнопке Свернуть\Развернуть, поэтому не отображаем, если это так
          widget.menu.length > countOnCollapsed ? GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Container(
              padding: EdgeInsets.only(top: 12.h, bottom: 10.h),
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