import 'package:admin_dashboard/constants/app_font_family.dart';
import 'package:admin_dashboard/ui/widgets/tabIndicator.dart';
import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();
  static const Color lightPrimaryAppColor = Color(0xFF0D47A1);
  static const Color dartPrimaryAppColor = Color.fromARGB(255, 40, 40, 40);
  ///// ========>  Light Mode
  static const Color lightPrimaryKeyColor = Colors.white;
  static const Color lightSecondaryKeyColor = Colors.white;
  static const Color lightTertiaryKeyColor = Colors.white;
  static const Color lightNeutralKeyColor = Colors.white;
  static const Color lightNeutralVariantKeyColor = Colors.white;
  ///// ========>  Dark Mode
  static const Color darkPrimaryKeyColor = Color.fromARGB(255, 40, 40, 40);
  static const Color darkSecondaryKeyColor = Color.fromARGB(255, 40, 40, 40);
  static const Color darkTertiaryKeyColor = Color.fromARGB(255, 40, 40, 40);
  static const Color darkNeutralKeyColor = Color.fromARGB(255, 40, 40, 40);
  static const Color darkNeutralVariantKeyColor =
      Color.fromARGB(255, 40, 40, 40);
  ///// =========> text theme for light theme
  static const TextStyle _lightCaption =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black);
  static const TextStyle _lightSubtitle1 =
      TextStyle(fontSize: 18, color: Colors.black);
  static const TextStyle _lightHeadline3 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black);
  static const TextStyle _lightHeadline2 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 23, color: Colors.black);
  static const TextStyle _lightHeadline1 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 26, color: Colors.black);

  static const TextStyle _lightSubtitle2 =
      TextStyle(fontSize: 15.0, color: Colors.black);
  static const TextStyle _lightHeadline4 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black);
  static const TextStyle _lightHeadline5 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.black);
  static const TextStyle _lightBodyText1 = TextStyle(
      fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.w400);

  static const TextTheme _lightTextTheme = TextTheme(
      caption: _lightCaption,
      headline1: _lightHeadline1,
      headline2: _lightHeadline2,
      headline3: _lightHeadline3,
      headline4: _lightHeadline4,
      headline5: _lightHeadline5,
      subtitle1: _lightSubtitle1,
      subtitle2: _lightSubtitle2,
      bodyText1: _lightBodyText1);
  ///// =========> text theme for dart theme
  static const TextStyle _darkCaption =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white);

  static const TextStyle _darkSubtitle1 =
      TextStyle(fontSize: 18, color: Colors.white);
  static const TextStyle _darkHeadline3 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.white);
  static const TextStyle _darkHeadline2 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 23, color: Colors.white);
  static const TextStyle _darkHeadline1 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 26, color: Colors.white);

  static const TextStyle _darkSubtitle2 =
      TextStyle(fontSize: 15.0, color: Colors.white);
  static const TextStyle _darkHeadline5 = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 15.0, color: Colors.white);
  static const TextStyle _darkHeadline4 = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 18.0, color: Colors.white);

  static const TextStyle _darkBodyText1 = TextStyle(
      fontSize: 12.0, color: Colors.white, fontWeight: FontWeight.w400);

  static const TextTheme _darkTextTheme = TextTheme(
    caption: _darkCaption,
    headline1: _darkHeadline1,
    headline2: _darkHeadline2,
    headline3: _darkHeadline3,
    headline4: _darkHeadline4,
    headline5: _darkHeadline5,
    subtitle1: _darkSubtitle1,
    subtitle2: _darkSubtitle2,
    bodyText1: _darkBodyText1,
  );

  static final ThemeData lightTheme = ThemeData(
    platform: TargetPlatform.android,
    primaryColor: lightPrimaryKeyColor,
    primaryColorLight: lightPrimaryAppColor,
    primaryColorDark: dartPrimaryAppColor,
    splashColor: Colors.transparent,
    scrollbarTheme: ScrollbarThemeData(
      radius: const Radius.circular(5.0),
      thumbColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return Colors.grey[400]!;
        },
      ),
      trackColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return Colors.grey[400]!;
        },
      ),
      trackBorderColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return Colors.grey[400]!;
        },
      ),
    ),
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: lightPrimaryKeyColor,
      onPrimary: lightPrimaryKeyColor,
      primaryContainer: lightPrimaryKeyColor,
      onPrimaryContainer: lightPrimaryKeyColor,
      secondary: lightPrimaryAppColor,
      onSecondary: lightPrimaryAppColor,
      secondaryContainer: lightPrimaryAppColor,
      onSecondaryContainer: lightPrimaryAppColor,
      tertiary: lightTertiaryKeyColor,
      onTertiary: lightTertiaryKeyColor,
      tertiaryContainer: lightTertiaryKeyColor,
      onTertiaryContainer: lightTertiaryKeyColor,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: lightPrimaryAppColor,
      selectionColor: lightPrimaryAppColor.withOpacity(0.4),
      selectionHandleColor: lightPrimaryAppColor,
    ),
    dialogBackgroundColor: Colors.white,
    fontFamily: AppFontFamily.productSans,
    scaffoldBackgroundColor: lightPrimaryKeyColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF0D47A1), elevation: 2),
    textTheme: _lightTextTheme,
    appBarTheme: AppBarTheme(
      shape: Border(bottom: BorderSide(color: Colors.grey[200]!)),
      color: lightPrimaryKeyColor,
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: _lightSubtitle1,
      toolbarTextStyle: _lightSubtitle2,
    ),
    snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xFF0D47A1),
        elevation: 2,
        contentTextStyle: TextStyle(fontSize: 15.0, color: Colors.white)),
    iconTheme: const IconThemeData(color: Colors.black),
    primaryIconTheme: const IconThemeData(
      color: Colors.black,
    ),
    popupMenuTheme: const PopupMenuThemeData(
        color: lightPrimaryKeyColor, elevation: 1, textStyle: _lightSubtitle2),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(const Color(0xFF0D47A1)),
      checkColor: MaterialStateProperty.all(Colors.white),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(const Color(0xFF0D47A1)),
    ),
    buttonTheme: const ButtonThemeData(
        colorScheme: ColorScheme.light(
            primary: Color(0xFF0D47A1), onPrimary: Colors.white),
        buttonColor: Color(0xFF0D47A1),
        textTheme: ButtonTextTheme.primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return const Color(0xFF0D47A1);
        },
      ),
      elevation: MaterialStateProperty.resolveWith<double>(
        (Set<MaterialState> states) {
          return 1;
        },
      ),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
        (Set<MaterialState> states) {
          return const EdgeInsets.fromLTRB(12, 8, 12, 8);
        },
      ),
      shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
        (Set<MaterialState> states) {
          return const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)));
        },
      ),
    )),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      elevation: MaterialStateProperty.resolveWith<double>(
        (Set<MaterialState> states) {
          return 0;
        },
      ),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
        (Set<MaterialState> states) {
          return const EdgeInsets.all(8.0);
        },
      ),
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith<double>(
          (Set<MaterialState> states) {
            return 0;
          },
        ),
        padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<MaterialState> states) {
            return const EdgeInsets.all(8.0);
          },
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (Set<MaterialState> states) {
            return const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)));
          },
        ),
      ),
    ),
    unselectedWidgetColor: Colors.white,
    dialogTheme: const DialogTheme(
      backgroundColor: lightPrimaryKeyColor,
      titleTextStyle: _lightSubtitle1,
      contentTextStyle: _lightSubtitle2,
    ),
    cardColor: lightPrimaryKeyColor,
    dividerTheme: DividerThemeData(color: Colors.grey[200]),
    drawerTheme: const DrawerThemeData(
      backgroundColor: lightPrimaryKeyColor,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.black,
      linearMinHeight: 2,
    ),
    tabBarTheme: const TabBarTheme(
      indicator: MD2Indicator(
        indicatorSize: MD2IndicatorSize.normal,
        indicatorHeight: 3.0,
        indicatorColor: lightPrimaryAppColor,
      ),
      unselectedLabelColor: Colors.grey,
      labelColor: lightPrimaryAppColor,
    ),
  );

  //the dark theme
  static final ThemeData darkTheme = ThemeData(
    platform: TargetPlatform.android,
    primaryColor: darkPrimaryKeyColor,
    primaryColorLight: lightPrimaryAppColor,
    primaryColorDark: dartPrimaryAppColor,
    splashColor: Colors.transparent,
    scrollbarTheme: ScrollbarThemeData(
      radius: const Radius.circular(5.0),
      thumbColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return Colors.white.withOpacity(0.5);
        },
      ),
      trackColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return Colors.white.withOpacity(0.5);
        },
      ),
      trackBorderColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return Colors.white.withOpacity(0.5);
        },
      ),
    ),
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      primary: darkPrimaryKeyColor,
      onPrimary: darkPrimaryKeyColor,
      primaryContainer: darkPrimaryKeyColor,
      onPrimaryContainer: darkPrimaryKeyColor,
      secondary: darkSecondaryKeyColor,
      onSecondary: darkSecondaryKeyColor,
      secondaryContainer: darkSecondaryKeyColor,
      onSecondaryContainer: darkSecondaryKeyColor,
      tertiary: darkTertiaryKeyColor,
      onTertiary: darkTertiaryKeyColor,
      tertiaryContainer: darkTertiaryKeyColor,
      onTertiaryContainer: darkTertiaryKeyColor,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.white,
      selectionColor: lightPrimaryAppColor.withOpacity(0.4),
      selectionHandleColor: Colors.white,
    ),
    dialogBackgroundColor: dartPrimaryAppColor,
    fontFamily: AppFontFamily.productSans,
    scaffoldBackgroundColor: darkPrimaryKeyColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF212121), elevation: 2),
    textTheme: _darkTextTheme,
    appBarTheme: AppBarTheme(
      shape: Border(bottom: BorderSide(color: Colors.grey[900]!)),
      elevation: 0.0,
      color: darkPrimaryKeyColor,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: _darkSubtitle1,
      toolbarTextStyle: _darkSubtitle2,
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Colors.black,
      elevation: 2,
      contentTextStyle: TextStyle(fontSize: 15.0, color: Colors.white),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    primaryIconTheme: const IconThemeData(
      color: Colors.white,
    ),
    popupMenuTheme: const PopupMenuThemeData(
        color: darkPrimaryKeyColor, elevation: 1, textStyle: _lightSubtitle2),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(Colors.white),
      checkColor: MaterialStateProperty.all(Colors.black),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(Colors.white),
    ),
    buttonTheme: const ButtonThemeData(
        colorScheme:
            ColorScheme.dark(primary: Colors.white, onPrimary: Colors.black),
        buttonColor: Colors.white,
        textTheme: ButtonTextTheme.primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return Colors.white;
        },
      ),
      elevation: MaterialStateProperty.resolveWith<double>(
        (Set<MaterialState> states) {
          return 1;
        },
      ),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
        (Set<MaterialState> states) {
          return const EdgeInsets.fromLTRB(12, 8, 12, 8);
        },
      ),
      shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
        (Set<MaterialState> states) {
          return const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)));
        },
      ),
    )),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      elevation: MaterialStateProperty.resolveWith<double>(
        (Set<MaterialState> states) {
          return 0;
        },
      ),
      padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
        (Set<MaterialState> states) {
          return const EdgeInsets.all(8.0);
        },
      ),
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith<double>(
          (Set<MaterialState> states) {
            return 0;
          },
        ),
        padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<MaterialState> states) {
            return const EdgeInsets.all(8.0);
          },
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (Set<MaterialState> states) {
            return const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)));
          },
        ),
      ),
    ),
    unselectedWidgetColor: Colors.white,
    dialogTheme: const DialogTheme(
      backgroundColor: darkPrimaryKeyColor,
      titleTextStyle: _darkSubtitle1,
      contentTextStyle: _darkSubtitle2,
    ),
    cardColor: darkPrimaryKeyColor,
    dividerTheme: DividerThemeData(color: Colors.grey[900]!),
    drawerTheme: const DrawerThemeData(
      backgroundColor: darkPrimaryKeyColor,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.white,
      linearMinHeight: 2,
    ),
    tabBarTheme: TabBarTheme(
      indicator: const MD2Indicator(
        indicatorSize: MD2IndicatorSize.normal,
        indicatorHeight: 3.0,
        indicatorColor: Colors.white,
      ),
      unselectedLabelColor: Colors.grey[600],
      labelColor: Colors.white,
    ),
  );
}
