import 'package:flutter/material.dart';
import 'package:lazzypay/constants/colors.dart';
import 'package:lazzypay/constants/text_style.dart';
import 'package:lazzypay/widgets/button.dart';
import 'package:lazzypay/widgets/textfield.dart';

import 'otp_scren.dart';

class SelectCountry extends StatelessWidget {
  const SelectCountry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        actions: [],
        elevation: 0,
          iconTheme: const IconThemeData(color: greyColor),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Buy now Pay Later',
                style: AppStyles.blackText,
              ),
              const SizedBox(
                height: 170,
              ),
              CustomTextField(
                obscureText: false,
                hintText: 'Select Country',
                labelText: 'Select Country',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 60,
                      child: CustomTextField(
                        obscureText: false,
                        hintText: '+973',
                        keyboardType: TextInputType.number,
                      )),
                  Flexible(
                    child: CustomTextField(
                      hintText: 'Enter Mobile Number',
                      labelText: 'Enter Mobile Number',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OTPScreen()));
                },
                child: CustomButton(
                  buttontext: 'Continue',
                ),
              ),
              const SizedBox(
                height: 300,
              ),
              Text(
                  'By continuing you agree that you have read and accept out T&C\'s and Privacy Policy',
                  style: AppStyles.smallgreyText)
            ],
          ),
        ),
      ),
    );
  }
}
