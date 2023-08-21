import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/models/location_data/location_data.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class HomeLocation extends StatelessWidget {
  const HomeLocation({Key? key, required this.locationData,}) : super(key: key);

  final LocationData locationData;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 4.h),
          height: 246.h,
          decoration: BoxDecoration(
            border: Border.all(color: colorScheme.secondaryTextColor!, width: 1),
          ),
          child: YandexMap(
            gestureRecognizers: {
              Factory<OneSequenceGestureRecognizer>(
                      () => EagerGestureRecognizer())
            },
            onMapCreated: (controller) {
              controller.moveCamera(
                CameraUpdate.newCameraPosition(CameraPosition(
                  target: Point(
                    longitude: locationData.longitude,
                    latitude: locationData.latitude,
                  ),
                  zoom: 15
                ))
              );
            },
            mapObjects: [
              PlacemarkMapObject(
                opacity: 1,
                  mapId: const MapObjectId("placemark"),
                  icon: PlacemarkIcon.single(
                      PlacemarkIconStyle(
                        image: BitmapDescriptor.fromAssetImage('assets/images/map_icon.png'),
                        scale: 0.3,
                      )
                  ),
                  point: Point(
                    longitude: locationData.longitude,
                    latitude: locationData.latitude,
                  )
              ),
            ],
          ),
        ),
        Text(
          locationData.address,
          style: textTheme.bodyMedium!.copyWith(color: colorScheme.secondaryTextColor),
        ),
      ],
    );
  }

}