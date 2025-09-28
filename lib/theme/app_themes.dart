import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';

abstract final class AppThemes {
  AppThemes._();
  static final lightTheme = createTheme(
    ColorScheme.fromSeed(
      seedColor: Colors.blue,
      dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
    ),
  );
  static final darkTheme = createTheme(
    ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.blue,
      dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
    ),
  );

  static ThemeData createTheme(final ColorScheme scheme) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      fontFamily: FontFamily.mPlus,
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(color: Color(0xFF777777)),
      ),
    );
  }
}
