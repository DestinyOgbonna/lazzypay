import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lazzypay/constants/colors.dart';

class AppStyles {
  static TextStyle whiteText = GoogleFonts.montserrat(
    fontSize: 25,
    fontWeight: FontWeight.w300,
    color: whiteColor,
  );

  static TextStyle blackText = GoogleFonts.montserrat(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: blackColor,
  );
  static TextStyle smallblackText = GoogleFonts.montserrat(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: blackColor,
  );
  static TextStyle smallgreyText = GoogleFonts.montserrat(
    fontSize: 12,
    // fontWeight: FontWeight.w100,
    color: greyColor,
  );

  static TextStyle smallergreyText = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: greyColor,
  );
  static TextStyle redText = GoogleFonts.montserrat(
      fontSize: 14, fontWeight: FontWeight.w500, color: appColor);
}
