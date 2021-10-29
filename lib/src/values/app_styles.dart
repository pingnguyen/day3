import 'package:df02/src/values/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle appTitle = TextStyle(
    overflow: TextOverflow.ellipsis,
    fontFamily: 'Zen Kurenaido',
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );
  static const TextStyle itemTitle = TextStyle(
    overflow: TextOverflow.ellipsis,
    fontFamily: 'Zen Kurenaido',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );
  static const TextStyle itemText = TextStyle(
    // overflow: TextOverflow.ellipsis,
    fontFamily: 'Zen Kurenaido',
    fontSize: 14,
    color: AppColors.textColor,
  );

  static const TextStyle itemClock = TextStyle(
    fontFamily: 'Zen Kurenaido',
    fontSize: 14,
    color: AppColors.clockColor,
  );
  static const TextStyle avartarText = TextStyle(
    fontFamily: 'Zen Kurenaido',
    fontSize: 12,
    color: AppColors.textColor,
  );
  static const TextStyle avartarName = TextStyle(
      fontFamily: 'Zen Kurenaido',
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Colors.white);
}
