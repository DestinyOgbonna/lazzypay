import 'package:flutter/material.dart';
import 'package:lazzypay/constants/colors.dart';
import 'package:lazzypay/constants/text_style.dart';
import 'package:lazzypay/views/user_bio.dart';
import 'package:lazzypay/widgets/button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

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
            children: [
              Text(
                'Welcome to Lazzypay',
                style: AppStyles.blackText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                child: Text(
                  'Please enter the OTP received in your registered mobile number',
                  style: AppStyles.smallergreyText,
                ),
              ),
              Row(
                children: [
                  Text(
                    'OTP Send to :',
                    style: AppStyles.smallergreyText,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '7474884993778',
                    style: AppStyles.redText,
                  )
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 30,
                  ),
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: const TextStyle(
                      color: appColor,
                      fontWeight: FontWeight.bold,
                    ),
                    validator: (value) {},
                    length: 4,
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      selectedColor: appColor,
                      selectedFillColor: whiteColor,
                      shape: PinCodeFieldShape.box,
                      activeColor: greyColor,
                      disabledColor: Colors.grey,
                      inactiveColor: greyColor,
                      inactiveFillColor: whiteColor,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: Colors.white,
                    ),
                    cursorColor: appColor,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    onCompleted: (value) {},
                    onTap: () {},
                    onChanged: (value) {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Resend code in:',
                      style: AppStyles.smallergreyText,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Resend',
                      style: AppStyles.redText,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 90,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserBio()));
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
