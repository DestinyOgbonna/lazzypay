import 'package:flutter/material.dart';
import 'package:lazzypay/constants/colors.dart';
import 'package:lazzypay/constants/text_style.dart';
import 'package:lazzypay/views/user_id.dart';
import 'package:lazzypay/widgets/button.dart';
import 'package:lazzypay/widgets/textfield.dart';

class UserBio extends StatelessWidget {
  const UserBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Text(
                  'Finish registration in 3 simple steps',
                  style: AppStyles.smallblackText,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Step 1: Basic Details',
                  style: AppStyles.blackText,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Please Fill in the details below',
                  style: AppStyles.smallblackText,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                          // margin: const EdgeInsets.only(right: 10),
                          width: 160,
                          child: CustomTextField(
                            obscureText: false,
                            hintText: 'First Name',
                            labelText: 'First Name',
                            keyboardType: TextInputType.name,
                          )),
                      SizedBox(
                        width: 160,
                        child: CustomTextField(
                          hintText: 'Last Name',
                          labelText: 'Last Name',
                          keyboardType: TextInputType.name,
                          obscureText: false,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                CustomTextField(
                  hintText: 'Email',
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 19,
                ),
                CustomTextField(
                  hintText: 'Date of Birth',
                  labelText: 'Date of Birth',
                  keyboardType: TextInputType.datetime,
                  obscureText: false,
                ),
                Row(
                  children: [
                    Text(
                      'Male',
                      style: AppStyles.smallergreyText,
                    ),
                    const Icon(
                      Icons.toggle_off,
                      color: appColor,
                      size: 50,
                    ),
                    Text(
                      'Female',
                      style: AppStyles.smallergreyText,
                    ),
                  ],
                ),
                Text(
                  'Tell us where you work',
                  style: AppStyles.smallergreyText,
                ),
                const SizedBox(
                  height: 19,
                ),
                CustomTextField(
                  obscureText: false,
                  hintText: 'Company Name',
                  labelText: 'Company Name',
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  obscureText: false,
                  hintText: 'Job title',
                  labelText: 'Job title',
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 49,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>const UserID_Page()));
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
