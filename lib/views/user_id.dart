import 'package:flutter/material.dart';
import 'package:lazzypay/constants/colors.dart';
import 'package:lazzypay/constants/text_style.dart';
import 'package:lazzypay/views/connect_card.dart';
import 'package:lazzypay/widgets/button.dart';
import 'package:lazzypay/widgets/textfield.dart';

class UserID_Page extends StatelessWidget {
  const UserID_Page({Key? key}) : super(key: key);

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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Step 2: National ID Card',
                  style: AppStyles.blackText,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Please enter your national ID card number below',
                  style: AppStyles.smallblackText,
                ),
                const SizedBox(
                  height: 39,
                ),
                CustomTextField(
                  hintText: 'National ID Number',
                  labelText: 'National ID Number',
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 19,
                ),
                Text(
                  'Upload the front and back side images of your National ID card',
                  style: AppStyles.smallergreyText,
                ),
                const SizedBox(
                  height: 19,
                ),
                UploadButton(
                  buttontext: 'Click to upload Front side',
                ),
                const SizedBox(
                  height: 15,
                ),
                UploadButton(
                  buttontext: 'Click to upload Back side',
                ),
                Text(
                  'Upload a Selfie',
                  style: AppStyles.smallergreyText,
                ),
                const SizedBox(
                  height: 19,
                ),
                UploadButton(
                  buttontext: 'Click to take a selfie',
                ),
                const SizedBox(
                  height: 15,
                ),
                
                const SizedBox(
                  height: 49,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>const ConnectCard()));
                  },
                  child: CustomButton(
                    buttontext: 'Continue',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
