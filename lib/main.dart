import 'package:flutter/material.dart';

import 'l10n/gen/app_localizations.dart';
import 'screen/timeline_screen.dart';
import 'theme/app_themes.dart';
import 'util/context_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) {
    return MaterialApp(
      title: 'Toki Log',
      onGenerateTitle: (final context) => context.l10n.tokiLog,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: const TimelineScreen(),
    );
  }
}
