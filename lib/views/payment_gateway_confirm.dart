import 'package:flutter/material.dart';
import 'package:lazzypay/constants/colors.dart';
import 'package:lazzypay/constants/text_style.dart';
import 'package:lazzypay/views/card_verification_successful.dart';
import 'package:lazzypay/widgets/button.dart';

class PaymentConfirm extends StatelessWidget {
  const PaymentConfirm({Key? key}) : super(key: key);

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
                'Payment gateway',
                style: AppStyles.blackText,
              ),
              const SizedBox(
                height: 180,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CardSuccess()));
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
