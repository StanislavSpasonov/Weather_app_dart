import 'package:google_fonts/google_fonts.dart';
import 'package:weather_home/scr/core/styles/colors/colors.dart';
import 'package:weather_home/scr/core/styles/text_styles/font_size.dart';
import 'package:weather_home/scr/core/styles/text_styles/font_weight.dart';

class AppTextStyles {
  static get title => GoogleFonts.kanit(
        fontSize: AppFontSizes.title,
        fontWeight: AppFontWeight.semyBold,
        color: AppColors.main,
      );
  static get subTitle => GoogleFonts.roboto(
        fontSize: AppFontSizes.subTitle,
        fontWeight: AppFontWeight.semyBold,
        color: AppColors.main,
      );
}
