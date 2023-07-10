import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

// App Colors
class AppShadows {
  // This class is not meant to be instatiated or extended; this constructor
  // prevents instantiation and extension.
  AppShadows._();

  static final cardShadow1 = BoxShadow(
    color: AppColors.black.withOpacity(0.05),
    offset: const Offset(0, 4),
    blurRadius: 60,
  );

  static final cardShadow2 = BoxShadow(
    color: AppColors.black.withOpacity(0.08),
    offset: const Offset(0, 4),
    blurRadius: 60,
  );

  static final cardShadow3 = BoxShadow(
    color: AppColors.black.withOpacity(0.08),
    offset: const Offset(0, 20),
    blurRadius: 100,
  );
}
