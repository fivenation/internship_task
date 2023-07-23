import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

class HomeImageSlider extends StatefulWidget {
  const HomeImageSlider({Key? key, required this.images, required this.date, required this.width, required this.height}) : super(key: key);

  final List<String> images;
  final int date;
  final double width;
  final double height;

  @override
  _HomeImageSliderState createState() => _HomeImageSliderState();
}

class _HomeImageSliderState extends State<HomeImageSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;

    final date = DateTime.fromMillisecondsSinceEpoch(widget.date);

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Container(
        color: colorScheme.formBackgroundColor,
        child: Stack(
          children: [
            // IMAGES PAGE VIEW
            PageView.builder(
              itemCount: widget.images.length,
              itemBuilder: (context, index) {
                return Image.network(
                  widget.images[index],
                  fit: BoxFit.fitWidth,

                  /// Данный параметр указан на случай, когда изображение не прогрузилось,
                  /// а PageView уже перешёл на следующий эелемент. Чтобы не было некрасивой пустоты,
                  /// было решено добавить прогресс индикатор
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
                );
              },
              onPageChanged: (int page) {
                setState(() {
                  _currentIndex = page;
                });
              },
            ),

           // IMAGE SLIDE INDEX
           Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(widget.images.length, (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: 5.h,
                      width: _currentIndex == index ? 30.w : 5.w,
                      decoration: BoxDecoration(
                        color: colorScheme.primaryColor,
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                    );
                  }).expand((element) => [element, SizedBox(width: 10.w)]).toList(),
              ),
            ),

            // DATE TEXT
            /// На данный момент предполагается, что полученная дата с API является
            /// числом millisecondsSinceEpoch, пока не стоит intl,
            /// адекватное преобразование милисекунд в строку невозможно
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 15.h, left: 15.w),
              child: Text(
                "${date.day} ${date.month}\n${date.year}",
                textAlign: TextAlign.center,
                style: textTheme.titleSmall!.copyWith(color: colorScheme.primaryOnDarkTextColor),
              ),
            ),
          ],
        ),
      ),
    );
  }

}