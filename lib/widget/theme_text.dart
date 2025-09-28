import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BodyLargeText extends StatelessWidget {
  const BodyLargeText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.bodyLarge, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class BodyMediumText extends StatelessWidget {
  const BodyMediumText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.bodyMedium, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class BodySmallText extends StatelessWidget {
  const BodySmallText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.bodySmall, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class LabelLargeText extends StatelessWidget {
  const LabelLargeText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.labelLarge, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class LabelMediumText extends StatelessWidget {
  const LabelMediumText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.labelMedium, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class LabelSmallText extends StatelessWidget {
  const LabelSmallText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.labelSmall, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class HeadingLargeText extends StatelessWidget {
  const HeadingLargeText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.headlineLarge, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class HeadingMediumText extends StatelessWidget {
  const HeadingMediumText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.headlineMedium, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class HeadingSmallText extends StatelessWidget {
  const HeadingSmallText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.headlineSmall, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class DisplayLargeText extends StatelessWidget {
  const DisplayLargeText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.displayLarge, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class DisplayMediumText extends StatelessWidget {
  const DisplayMediumText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.displayMedium, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class DisplaySmallText extends StatelessWidget {
  const DisplaySmallText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.displaySmall, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class TitleLargeText extends StatelessWidget {
  const TitleLargeText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.titleLarge, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class TitleMediumText extends StatelessWidget {
  const TitleMediumText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.titleMedium, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

class TitleSmallText extends StatelessWidget {
  const TitleSmallText(
    this.data, {
    super.key,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;

  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(final BuildContext context) {
    return Text(
      data,
      style: _mergeStyle(Theme.of(context).textTheme.titleSmall, style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('data', data))
      ..add(DiagnosticsProperty<TextStyle?>('style', style))
      ..add(DiagnosticsProperty<StrutStyle?>('strutStyle', strutStyle))
      ..add(EnumProperty<TextAlign?>('textAlign', textAlign))
      ..add(EnumProperty<TextDirection?>('textDirection', textDirection))
      ..add(DiagnosticsProperty<Locale?>('locale', locale))
      ..add(DiagnosticsProperty<bool?>('softWrap', softWrap))
      ..add(EnumProperty<TextOverflow?>('overflow', overflow))
      ..add(DiagnosticsProperty<TextScaler?>('textScaler', textScaler))
      ..add(IntProperty('maxLines', maxLines))
      ..add(StringProperty('semanticsLabel', semanticsLabel))
      ..add(EnumProperty<TextWidthBasis?>('textWidthBasis', textWidthBasis))
      ..add(
        DiagnosticsProperty<TextHeightBehavior?>(
          'textHeightBehavior',
          textHeightBehavior,
        ),
      )
      ..add(ColorProperty('selectionColor', selectionColor));
  }
}

TextStyle? _mergeStyle(final TextStyle? origin, final TextStyle? override) {
  if (override == null) {
    return origin;
  }
  if (origin == null) {
    return override;
  }

  return origin.copyWith(
    inherit: override.inherit,
    color: override.color,
    fontSize: override.fontSize,
    fontWeight: override.fontWeight,
    fontStyle: override.fontStyle,
    letterSpacing: override.letterSpacing,
    wordSpacing: override.wordSpacing,
    textBaseline: override.textBaseline,
    height: override.height,
    leadingDistribution: override.leadingDistribution,
    locale: override.locale,
    foreground: override.foreground,
    background: override.background,
    shadows: override.shadows,
    fontFeatures: override.fontFeatures,
    fontVariations: override.fontVariations,
    decoration: override.decoration,
    decorationColor: override.decorationColor,
    decorationStyle: override.decorationStyle,
    decorationThickness: override.decorationThickness,
    debugLabel: override.debugLabel,
    fontFamily: override.fontFamily,
    fontFamilyFallback: override.fontFamilyFallback,
    overflow: override.overflow,
  );
}
