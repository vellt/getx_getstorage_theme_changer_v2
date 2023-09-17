part of 'theme_controller.dart';

extension ThemeColors on ThemeController {
  Color get iconColor => _colors(
        light: Colors.white,
        dark: Colors.black,
      );

  Color get textColor => _colors(
        light: Colors.white,
        dark: Colors.black,
      );

  Color get bodyColor => _colors(
        light: Colors.white,
        dark: Colors.black,
      );

  Color get buttonColor => _colors(
        light: Colors.blue,
        dark: Colors.green,
      );

  Color get headerColor => _colors(
        light: Colors.blue,
        dark: Colors.green,
      );
}
