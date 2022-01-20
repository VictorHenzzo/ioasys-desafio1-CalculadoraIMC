import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppFonts {
  static final titleLogin = GoogleFonts.poppins(
    fontSize: 31,
    fontWeight: FontWeight.w400,
    color: AppColors.background,
  );
  static final subTitleLogin = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: AppColors.background,
  );
  static final hintTexts = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.hintText,
  );
  static final buttonTexts = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.background,
  );
  static final resultText = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.leading,
  );
}
