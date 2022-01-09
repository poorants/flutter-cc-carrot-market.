import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance?.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Colors.red, opacity: 0.8),
  );

  ThemeData customTheme = ThemeData(
    colorScheme: ColorScheme(
      primary: Colors.white,
      primaryVariant: Colors.blue,
      secondary: Colors.grey.shade800,
      secondaryVariant: Colors.blueAccent,
      surface: Colors.white54,
      background: Colors.white54,
      error: Colors.red,
      onPrimary: Colors.black87, // primary inner text
      onSecondary: Colors.black87,
      onSurface: Colors.redAccent,
      onBackground: Colors.redAccent,
      onError: Colors.redAccent,
      brightness: Brightness.light,
    ),
  );
}
