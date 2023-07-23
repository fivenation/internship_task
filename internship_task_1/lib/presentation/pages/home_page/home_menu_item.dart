import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/models/product_data/product_data.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

class HomeMenuItem extends StatelessWidget {
  const HomeMenuItem({
    super.key,
    this.onTap,
    this.removing = false,
    required this.item,
    required this.isEvenNumber,
  });

  final VoidCallback? onTap;
  final ProductData item;
  final bool removing;
  final bool isEvenNumber;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 140.h,
            width: 140.w,
            padding: EdgeInsets.only(bottom: 2.h),
            child: InkWell(
              onTap: onTap,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isEvenNumber ? 24.r : 0),
                  bottomRight: Radius.circular(isEvenNumber ? 24.r : 0),
                  topRight: Radius.circular(isEvenNumber ? 0 : 24.r),
                  bottomLeft: Radius.circular(isEvenNumber ? 0 : 24.r),
                ),
                child: Container(
                  color: colorScheme.formBackgroundColor,
                  child: Image.network(
                    item.url,
                    fit: BoxFit.cover,
                    loadingBuilder: (BuildContext context, Widget child,ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          color: colorScheme.buttonColor_1,
                          value: loadingProgress.expectedTotalBytes != null ?
                          loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 140.w,
            child: Text(
              item.title,
              style: textTheme.bodyMedium!.copyWith(color: colorScheme.secondaryTextColor),
            ),
          ),
        ],
      ),
    );
  }


}