import 'package:flutter/material.dart';

import 'screen/timeline_screen.dart';
import 'theme/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) {
    return MaterialApp(
      title: 'Toki Log',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: const TimelineScreen(),
    );
  }
}
