import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lazzypay/constants/colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.keyboardType,
      required this.obscureText,
      this.controller})
      : super(key: key);
  String? hintText;
  String? labelText;
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  // ignore: prefer_typing_uninitialized_variables
  final keyboardType;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: hintText,
              labelText: labelText,
              labelStyle: GoogleFonts.lato(
                  fontSize: 14,
                  color: const Color(
                    0xFFA1A9B3,
                  ),
                  fontWeight: FontWeight.w500),
              hintStyle: GoogleFonts.lato(
                  fontSize: 14,
                  color: const Color(
                    0xFFA1A9B3,
                  ),
                  fontWeight: FontWeight.w500),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: greyColor,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(1))),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: greyColor,
                ),
              ))),
    );
  }
}
