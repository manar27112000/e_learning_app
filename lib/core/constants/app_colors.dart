import 'package:flutter/material.dart';

class AppColors {
  // 🌟 Primary (Figma Blue Theme)
  static const Color primary        = Color(0xFF4A6CF7);
  static const Color primaryLight   = Color(0xFF6B8AFF);
  static const Color primaryDark    = Color(0xFF1E3A8A);

  // 🟡 Gold / Branding
  static const Color gold           = Color(0xFFDBA440);
  static const Color goldLight      = Color(0xFFE8B85C);

  // 🖤 Backgrounds
  static const Color bgLight        = Color(0xFFF5F5FA);
  static const Color bgWhite        = Color(0xFFFFFFFF);
  static const Color bgInput        = Color(0xFFF0F0F5);
  static const Color bgCard         = Color(0xFFFFFFFF);
  static const Color bgGrey         = Color(0xFFF8F6F6);
  static const Color bgPink         = Color(0xFFFDF6F6);

  // 🌑 Backgrounds — Dark
  static const Color bgDark         = Color(0xFF130A22);
  static const Color bgDarkSurface  = Color(0xFF1E1130);
  static const Color bgDarkCard     = Color(0xFF2A1845);
  static const Color bgDarkInput    = Color(0xFF2A1845);

  // ✍️ Text — Light Mode
  static const Color textOnLight    = Color(0xFF1C0A30);
  static const Color textSecondary  = Color(0xFF6B7280);
  static const Color textHint       = Color(0xFF9CA3AF);
  static const Color textMuted      = Color(0xFFAAAAAA);

  // ✍️ Text — Dark Mode
  static const Color textOnDark     = Color(0xFFF0E8FF);
  static const Color textOnDarkMuted= Color(0xFFBB99DD);
  static const Color textOnDarkHint = Color(0xFF8866AA);

  // 🧩 UI
  static const Color border         = Color(0xFFE5E7EB);
  static const Color borderDark     = Color(0xFF4A2875);
  static const Color divider        = Color(0xFFE5E7EB);
  static const Color iconGrey       = Color(0xFF9CA3AF);

  // ⭐ States
  static const Color star           = Color(0xFFFFB930);
  static const Color error          = Color(0xFFEF4444);
  static const Color success        = Color(0xFF22C55E);
  static const Color warning        = Color(0xFFF59E0B);

  // 🌈 Gradients
  static const LinearGradient splashGradient = LinearGradient(
    colors: [Color(0xFF1E3A8A), Color(0xFF4A6CF7)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF4A6CF7), Color(0xFF6B8AFF)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const LinearGradient cardGradientDark = LinearGradient(
    colors: [Color(0xFF2A1845), Color(0xFF3D2060)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}