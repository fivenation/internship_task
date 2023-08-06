import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/models/product_data/product_data.dart';
import 'package:internship_task_1/presentation/pages/product_page/product_app_bar.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

//@RoutePage()
class ProductPage extends StatelessWidget {
  const ProductPage({Key? key, required this.item}) : super(key: key);

  final ProductData item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;

    return Scaffold(
      body: SafeArea(
        child: Material(
          color: colorScheme.secondaryColor,
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: ProductAppBar(
                  title: item.title,
                  image: item.url,
                  expandedHeight: 250,
                ),
              ),
              SliverList(delegate: SliverChildListDelegate([
                Container(
                  color: colorScheme.secondaryColor,
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: item.ingredients.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 12.w),
                                  child: CircleAvatar(
                                    radius: 21.r,
                                    backgroundImage: const AssetImage('assets/images/ingredient_icon.png'),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    item.ingredients[index],
                                    style: textTheme.bodyLarge!.copyWith(color: colorScheme.secondaryTextColor),
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ])),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Container(
                  color: colorScheme.secondaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}