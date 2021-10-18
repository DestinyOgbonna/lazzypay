import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lazzypay/constants/colors.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    this.buttontext,
    this.color,
  }) : super(key: key);

  String? buttontext;
  final Function? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 0, left: 0, bottom: 15),
      alignment: Alignment.center,
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        color: appColor,
      ),
      child: Text(
        '$buttontext',
        style: GoogleFonts.lato(color: Colors.white, fontSize: 14),
      ),
    );
  }
}

class UploadButton extends StatelessWidget {
  UploadButton({
    Key? key,
    this.buttontext,
    this.color,
  }) : super(key: key);

  String? buttontext;
  final Function? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 0, left: 0, bottom: 15),
      alignment: Alignment.centerLeft,
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        color: whiteColor,
        border: Border.all(color: greyColor),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          '$buttontext',
          style: GoogleFonts.lato(color: greyColor, fontSize: 14),
        ),
      ),
    );
  }
}
