import 'package:flutter/material.dart';
import 'package:lazzypay/constants/colors.dart';
import 'package:lazzypay/constants/text_style.dart';
import 'package:lazzypay/widgets/button.dart';

class CardSuccess extends StatelessWidget {
  const CardSuccess({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Card Verification',
                style: AppStyles.blackText,
              ),
              Text(
                'Successful',
                style: AppStyles.blackText,
              ),
              const SizedBox(
                height: 180,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => UserBio()));
                },
                child: CustomButton(
                  buttontext: 'Continue',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
