import 'package:flutter/material.dart';

import '../l10n/gen/app_localizations.dart';

extension ContextExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;

  ColorScheme get colors => Theme.of(this).colorScheme;
}
