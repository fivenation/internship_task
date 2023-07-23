import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';

/// Класс содержит в себе все данные о теме приложения. В константах указаны
/// значения цветов, стилей и.т.д., функция get возвращает сам объект ThemeData
/// в нём указаны какие-то базовые элементы стилизации интерфейса, а также
/// указаны стандартные стили текста (чтобы не указывать style каждого Text wgt,)
/// и цвета, выделенные для удобства кастомизации в ThemeExtension -> AppColorScheme

class AppTheme {
  AppTheme._();

  // COLORS
  static const Color _primaryColor = Color(0xFFFFFFFF);
  static const Color _secondaryColor = Color(0xFFFAFBF9);
  static const Color _formBackgroundColor = Color(0xFFF2F8EF);

  static const Color _appBarButtonColor = Color(0xFFC0C0CA);
  static const Color _buttonColor_1 = Color(0xFFFDAC07);
  static const Color _buttonColor_2 = Color(0xFF47802B);

  static const Color _headerTextColor = Color(0xFF000000);
  static const Color _primaryOnLightTextColor = Color(0xFF171010);
  static const Color _primaryOnDarkTextColor = Color(0xFFFFFFFF);
  static const Color _secondaryTextColor = Color(0xFF4E4343);

  // TEXT STYLES
  static final TextStyle _titleStyle = TextStyle(
    fontSize: 20.sp,
    fontFamily: 'Jost',
    height: 20.sp / 20.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle _header1Style = TextStyle(
    fontSize: 24.sp,
    fontFamily: 'YesevaOne',
    height: 24.sp / 24.sp,
  );

  static final TextStyle _header2Style = TextStyle(
    fontSize: 24.sp,
    fontFamily: 'Jost',
    height: 24.sp / 24.sp,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle _buttonStyle = TextStyle(
    fontSize: 16.sp,
    fontFamily: 'Jost',
    height: 23.sp / 16.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle _body1Style = TextStyle(
    fontSize: 14.sp,
    fontFamily: 'Jost',
    height: 14.sp / 14.sp,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle _body2Style = TextStyle(
    fontSize: 14.sp,
    fontFamily: 'Jost',
    height: 20.sp / 14.sp,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle _bodySmallStyle = TextStyle(
    fontSize: 12.sp,
    fontFamily: 'Jost',
    height: 12.sp / 12.sp,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  // THEME
  /// С новым флаттером работать с темой стало очень неудобно :(
  /// Для работы с любыми компонентами стилей будем использовать единую
  /// ThemeData, откуда будем доставать необходимое. В случае, когда необходимо
  /// реализовать "нестандартный" стиль, необходимо использовать copyWith(...)
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
        titleLarge: _titleStyle, // название страниц
        titleMedium: _header1Style, // заголовок раздела
        titleSmall: _header2Style, // заголовок на главной странице (дата)
        bodyLarge: _body2Style, // высокий текст
        bodyMedium: _body1Style, // обычный текст
        bodySmall: _bodySmallStyle, // маленький текст
        displayLarge: _buttonStyle, // текст кнопок
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20.w , vertical: 12.h),
          minimumSize: Size(156.w, 50.h),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
          side: BorderSide.none,
        )
      ),
      extensions: const <ThemeExtension<dynamic>>[
        AppColorScheme(
          primaryColor: _primaryColor,
          secondaryColor: _secondaryColor,
          formBackgroundColor: _formBackgroundColor,
          appBarButtonColor: _appBarButtonColor,
          buttonColor_1: _buttonColor_1,
          buttonColor_2: _buttonColor_2,
          headerTextColor: _headerTextColor,
          primaryOnLightTextColor: _primaryOnLightTextColor,
          primaryOnDarkTextColor: _primaryOnDarkTextColor,
          secondaryTextColor: _secondaryTextColor,
        ),
      ],
    );
  }
}