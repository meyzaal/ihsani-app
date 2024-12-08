import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IhsaniTheme {
  const IhsaniTheme._();

  static ThemeData light() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF0F5132),
    );

    return _buildTheme(colorScheme);
  }

  static ThemeData dark() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF0F5132),
      brightness: Brightness.dark,
    );

    return _buildTheme(colorScheme);
  }
}

ThemeData _buildTheme(ColorScheme colorScheme) {
  final baseTheme = ThemeData.from(
    colorScheme: colorScheme,
    useMaterial3: true,
  );
  final displayTextTheme = GoogleFonts.gabaritoTextTheme(baseTheme.textTheme);
  final bodyTextTheme = GoogleFonts.latoTextTheme(baseTheme.textTheme);

  return baseTheme.copyWith(
    textTheme: displayTextTheme.copyWith(
      bodyLarge: bodyTextTheme.bodyLarge,
      bodyMedium: bodyTextTheme.bodyMedium,
      bodySmall: bodyTextTheme.bodySmall,
      labelLarge: bodyTextTheme.labelLarge,
      labelMedium: bodyTextTheme.labelMedium,
      labelSmall: bodyTextTheme.labelSmall,
    ),
  );
}
