import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/bloc/place_bloc/place_bloc.dart';
import 'package:internship_task_1/domain/dependencies/service_locator.dart';
import 'package:internship_task_1/presentation/components/custom_progress_indicator.dart';
import 'package:internship_task_1/presentation/pages/guests_page/guest_page.dart';
import 'package:internship_task_1/presentation/pages/home_page/widgets/home_entertainment_list.dart';
import 'package:internship_task_1/presentation/pages/home_page/widgets/home_image_slider.dart';
import 'package:internship_task_1/presentation/pages/home_page/widgets/home_location.dart';
import 'package:internship_task_1/presentation/pages/home_page/widgets/home_menu_grid.dart';
import 'package:internship_task_1/presentation/pages/wishlist_page/wishlist_page.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

//@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _onWebLinkTap(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw "can't launch url: $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    final placeBloc = getIt<PlaceBloc>()..add(const PlaceEvent.load());
    return StreamProvider<PlaceState>.value(
        value: placeBloc.stream,
        initialData: placeBloc.state,
        child: Consumer<PlaceState>(
          builder: (BuildContext context, state, _) {
            return state.when(
              loading: () => const CustomProgressIndicator(),
              successful: (placeData) {
                final theme = Theme.of(context);
                final textTheme = theme.textTheme;
                final colorScheme = theme.extension<AppColorScheme>()!;

                return Scaffold(
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 59.h),
                          child: HomeImageSlider(
                            width: 375.w,
                            height: 250.h,
                            images: placeData.images,
                            date: placeData.date,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                          child: Text(
                            placeData.description,
                            style: textTheme.bodyLarge!.copyWith(color: colorScheme.primaryOnLightTextColor),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => GuestPage())
                                );
                              },
                              style: theme.outlinedButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all(colorScheme.buttonColor_1)),
                              child: Text(
                                "Список гостей",
                                style: textTheme.displayLarge!.copyWith(color: colorScheme.primaryOnDarkTextColor),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => const WishlistPage())
                                );
                              },
                              style: theme.outlinedButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all(colorScheme.buttonColor_1)),
                              child: Text(
                                "Вишлист",
                                style: textTheme.displayLarge!.copyWith(color: colorScheme.primaryOnDarkTextColor),
                              ),
                            ),
                          ],
                        ),

                        // MENU
                        Container(
                          padding: EdgeInsets.only(top: 30.h, bottom: 16.h),
                          alignment: Alignment.center,
                          child: Text(
                            "Меню",
                            style: textTheme.titleMedium!.copyWith(color: colorScheme.headerTextColor),
                          ),
                        ),
                        HomeMenuGrid(menu: placeData.productList),

                        // ENTERTAINMENT
                        Container(
                          padding: EdgeInsets.only(top: 30.h, bottom: 16.h),
                          alignment: Alignment.center,
                          child: Text(
                            "Развлечения",
                            style: textTheme.titleMedium!.copyWith(color: colorScheme.headerTextColor),
                          ),
                        ),
                        HomeEntertainmentList(entertainments: placeData.entertainmentList),

                        // LOCATION
                        Container(
                          padding: EdgeInsets.only(top: 30.h, bottom: 16.h),
                          alignment: Alignment.center,
                          child: Text(
                            "Место",
                            style: textTheme.titleMedium!.copyWith(color: colorScheme.headerTextColor),
                          ),
                        ),
                        HomeLocation(locationData: placeData.location),

                        GestureDetector(
                          onTap: () {
                            _onWebLinkTap(placeData.webLink);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            alignment: Alignment.center,
                            child: Text(
                              "Перейти на сайт места",
                              style: textTheme.bodyLarge!.copyWith(color: colorScheme.primaryOnLightTextColor, decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 100.h)),

                      ],
                    ),
                  ),
                );
              },
            );
          },
        )
    );
  }

}