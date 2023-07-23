import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

class ProductAppBar extends SliverPersistentHeaderDelegate {

  final String title;
  final String image;
  final double expandedHeight;

  ProductAppBar({required this.title, required this.image, required this.expandedHeight});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.primaryColor,
        image: DecorationImage(
          opacity: normExtent(shrinkOffset),
          fit: BoxFit.cover,
          image: NetworkImage(image)
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 20.0,
            color: Colors.black.withOpacity(0.14*(1-normExtent(shrinkOffset))),
          ),
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 5.0,
            color: Colors.black.withOpacity(0.12*(1-normExtent(shrinkOffset))),
          ),
          BoxShadow(
            offset: const Offset(0, 2),
            blurRadius: 4.0,
            color: Colors.black.withOpacity(0.14*(1-normExtent(shrinkOffset))),
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
              top: 16 + (maxExtent*0.75-16)*normExtent(shrinkOffset),
              left: 16 + (60-16)*normExtent(shrinkOffset),
            ),
            child: Text(
              title,
              style: textTheme.titleLarge!.copyWith(
                fontSize: textTheme.titleLarge!.fontSize! + 10 * normExtent(shrinkOffset),
                color: colorScheme.headerTextColor,
                shadows: [
                  Shadow(
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 20.0,
                    color: colorScheme.primaryColor!.withOpacity(normExtent(shrinkOffset)),
                  ),
                  Shadow(
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 10.0,
                    color: colorScheme.primaryColor!.withOpacity(normExtent(shrinkOffset)),
                  ),
                  Shadow(
                    offset: const Offset(-0.2, -0.2),
                    blurRadius: 2.0,
                    color: colorScheme.primaryColor!.withOpacity(normExtent(shrinkOffset)),
                  ),
                  Shadow(
                    offset: const Offset(0.2, 0.2),
                    blurRadius: 2.0,
                    color: colorScheme.primaryColor!.withOpacity(normExtent(shrinkOffset)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  double normExtent(double shrinkOffset) => 1-(shrinkOffset/(maxExtent-minExtent)) > 0
      ? 1-(shrinkOffset/(maxExtent-minExtent)) : 0;

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;

}