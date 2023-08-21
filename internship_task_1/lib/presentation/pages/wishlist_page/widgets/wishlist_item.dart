import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_task_1/domain/models/wish_data/wish_data.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';
import 'package:url_launcher/url_launcher.dart';

class WishListItem extends StatelessWidget {
  final WishData item;
  final Function onCheck;

  const WishListItem({super.key, required this.item, required this.onCheck});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;

    void _onLinkTap(String url) async {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
      throw "can't launch url: $url";
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: textTheme.bodyLarge!.copyWith(color: colorScheme.primaryOnLightTextColor, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
              ),
              GestureDetector(
                onTap: () {
                  _onLinkTap(item.url);
                },
                child: Text(
                  item.url,
                  style: textTheme.bodyLarge!.copyWith(color: colorScheme.secondaryTextColor, overflow: TextOverflow.fade, decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
        Checkbox(
          checkColor: const Color(0xFFD9D9D9),
          activeColor: colorScheme.secondaryTextColor,
          value: item.isBooked,
          shape: const CircleBorder(),
          onChanged: (bool? value) {
            onCheck();
          },
        ),
      ],
    );
  }

}