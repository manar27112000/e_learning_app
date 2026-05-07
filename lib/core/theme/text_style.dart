import 'package:flutter/material.dart';
class AppTextStyles {

  // ============================================
  // HEADING STYLES
  // ============================================

  ///(32px) - for main pages
  static TextStyle displayLarge(BuildContext context) => TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.2,
    letterSpacing: -0.5,
  );

  ///(28px) - for main sections
  static TextStyle displayMedium(BuildContext context) => TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.3,
    letterSpacing: 0,
  );

  ///  (24px) - for normal headings
  static TextStyle displaySmall(BuildContext context) => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.3,
    letterSpacing: 0,
  );

  /// (20px) - for sub headings
  static TextStyle headlineMedium(BuildContext context) => TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.4,
    letterSpacing: 0,
  );

  ///  (18px) - for small headings
  static TextStyle headlineSmall(BuildContext context) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.4,
    letterSpacing: 0,
  );

  // ============================================
  // TITLE STYLES
  // ============================================

  ///  (16px) - for normal titles
  static TextStyle title16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.15,
  );

  ///  (14px) - for small titles
  static TextStyle title14(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.1,
  );

  ///  (12px) - for tiny titles
  static TextStyle title12(BuildContext context) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.4,
  );

  // ============================================
  // BODY STYLES
  // ============================================

  /// - for large body text (18px)
  static TextStyle bodyLarge(BuildContext context) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.5,
  );

  /// (16px) - for normal body text
  static TextStyle bodyMedium(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.5,
  );

  /// - for small body text (14px)
  static TextStyle bodySmall(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.25,
  );

  /// - for tiny body text (12px)
  static TextStyle bodyTiny(BuildContext context) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.4,
    letterSpacing: 0.4,
  );

  // ============================================
  // LABEL STYLES -
  // ============================================

  /// - for large label text (16px)
  static TextStyle labelLarge(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.onPrimary,
    height: 1.4,
    letterSpacing: 0.15,
  );

  /// - for medium label text (14px)
  static TextStyle labelMedium(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.onPrimary,
    height: 1.4,
    letterSpacing: 0.1,
  );

  /// - for small label text (12px)
  static TextStyle labelSmall(BuildContext context) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.onPrimary,
    height: 1.3,
    letterSpacing: 0.5,
  );

  // ============================================
  // CUSTOM BOLD STYLES -
  // ============================================

  ///  - for custom bold text (18px)
  static TextStyle bold18(BuildContext context) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.5,
  );

  ///  - for custom bold text (16px)
  static TextStyle bold16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.5,
  );

  ///- for custom bold text  (14px)
  static TextStyle bold14(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.25,
  );

  /// - for custom bold text 12px)
  static TextStyle bold12(BuildContext context) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.4,
    letterSpacing: 0.4,
  );

  // ============================================
  // SEMI-BOLD STYLES
  // ============================================

  /// - for semi-bold text (18px)
  static TextStyle semiBold18(BuildContext context) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.5,
  );

  /// - for semi-bold text(16px)
  static TextStyle semiBold16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.5,
  );

  /// - for semi-bold text (14px)
  static TextStyle semiBold14(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.25,
  );

  /// - for semi-bold text (12px)
  static TextStyle semiBold12(BuildContext context) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.4,
    letterSpacing: 0.4,
  );

  // ============================================
  // LIGHT STYLES -
  // ============================================

  /// - for light text (16px)
  static TextStyle light16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.5,
  );

  ///for light text(14px)
  static TextStyle light14(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.25,
  );

  // ============================================
  // COLORED TEXT STYLES
  // ============================================

  /// - for primary text (16px)
  static TextStyle primary16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.primary,
    height: 1.5,
    letterSpacing: 0.5,
  );

  /// for primary text (14px)
  static TextStyle primary14(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.primary,
    height: 1.5,
    letterSpacing: 0.25,
  );

/// for secondary text (16px)
  static TextStyle secondary16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.secondary,
    height: 1.5,
    letterSpacing: 0.5,
  );

  /// for error text (16px)
  static TextStyle error16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.error,
    height: 1.5,
    letterSpacing: 0.5,
  );

  /// for error text (14px)
  static TextStyle error14(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.error,
    height: 1.5,
    letterSpacing: 0.25,
  );

  /// for success text (16px)
  static TextStyle success16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: const Color(0xFF4CAF50),
    height: 1.5,
    letterSpacing: 0.5,
  );

  /// for warning text (16px)
  static TextStyle warning16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: const Color(0xFFFB8C00),
    height: 1.5,
    letterSpacing: 0.5,
  );

  // ============================================
  // MUTED/GREY TEXT STYLES
  // ============================================

  /// for muted text (16px)
  static TextStyle muted16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
    height: 1.5,
    letterSpacing: 0.5,
  );

  /// for muted text (14px)
  static TextStyle muted14(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
    height: 1.5,
    letterSpacing: 0.25,
  );

/// for muted text (12px)
  static TextStyle muted12(BuildContext context) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
    height: 1.4,
    letterSpacing: 0.4,
  );

  // ============================================
  // HINT STYLES
  // ============================================

  ///placeholder
  static TextStyle hint16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.4),
    height: 1.5,
    letterSpacing: 0.5,
  );

  /// for placeholder (14px)
  static TextStyle hint14(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.4),
    height: 1.5,
    letterSpacing: 0.25,
  );

  // ============================================
  // PARAGRAPH STYLES
  // ============================================

  /// for paragraph (15px)
  static TextStyle paragraph(BuildContext context) => TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.6,
    letterSpacing: 0.3,
  );
/// for paragraph (16px) with large line height
  static TextStyle paragraphLarge(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.7,
    letterSpacing: 0.5,
  );

  // ============================================
  // SPECIAL STYLES -
  // ============================================

  ///  text with underline
  static TextStyle underline16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.5,
    decoration: TextDecoration.underline,
  );

  ///  text with line through
  static TextStyle strikethrough16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
    height: 1.5,
    letterSpacing: 0.5,
    decoration: TextDecoration.lineThrough,
  );

  ///  (italic)
  static TextStyle italic16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.5,
    fontStyle: FontStyle.italic,
  );

  // ============================================
  // BUTTON TEXT STYLES
  // ============================================

  /// for button (16px)
  static TextStyle buttonLarge(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    height: 1.4,
    letterSpacing: 0.5,
  );

  /// for button (14px)
  static TextStyle buttonMedium(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    height: 1.4,
    letterSpacing: 0.3,
  );

  /// for button (12px)
  static TextStyle buttonSmall(BuildContext context) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    height: 1.3,
    letterSpacing: 0.5,
  );

  // ============================================
  // INPUT/FORM STYLES
  // ============================================

  /// for input text (16px)
  static TextStyle inputText(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.5,
  );

  ///  for label name
  static TextStyle inputLabel(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).colorScheme.onSurface,
    height: 1.5,
    letterSpacing: 0.1,
  );

  ///  helper/ comment
  static TextStyle inputHelper(BuildContext context) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
    height: 1.4,
    letterSpacing: 0.4,
  );

  // ============================================
  // CUSTOM METHOD -
  // ============================================

/// for custom  method
  static TextStyle custom({
    required BuildContext context,
    required double fontSize,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
    double height = 1.5,
    double letterSpacing = 0,
    TextDecoration decoration = TextDecoration.none,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? Theme.of(context).colorScheme.onSurface,
      height: height,
      letterSpacing: letterSpacing,
      decoration: decoration,
      fontStyle: fontStyle,
    );
  }
}