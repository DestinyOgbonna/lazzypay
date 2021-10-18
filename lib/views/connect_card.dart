import 'package:flutter/material.dart';
import 'package:lazzypay/constants/colors.dart';
import 'package:lazzypay/constants/text_style.dart';
import 'package:lazzypay/widgets/button.dart';
import 'package:lazzypay/widgets/textfield.dart';

import 'payment_gateway_confirm.dart';

class ConnectCard extends StatelessWidget {
  const ConnectCard({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                'Connect your Card',
                style: AppStyles.blackText,
              ),
              const SizedBox(
                height: 19,
              ),
              Text(
                'Enter your debit/credit card details',
                style: AppStyles.smallblackText,
              ),
              const SizedBox(
                height: 19,
              ),
              Text(
                'Accepted Cards',
                style: AppStyles.smallblackText,
              ),
              const SizedBox(
                height: 49,
              ),
              CustomTextField(
                obscureText: false,
                hintText: 'Card number',
                labelText: 'Card number',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 19,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                      // margin: const EdgeInsets.only(right: 10),
                      width: 100,
                      child: CustomTextField(
                        obscureText: false,
                        hintText: 'Ex Date',
                        labelText: 'Ex Date',
                        keyboardType: TextInputType.name,
                      )),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 100,
                    child: CustomTextField(
                      hintText: 'CVV',
                      labelText: 'CVV',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'An amount equivalent to 1usd will be debited from your card to check the validaity of your card.',
                style: AppStyles.smallblackText,
              ),
              Text(
                'The deducted Amount will be reimbursed within 7 working days',
                style: AppStyles.smallblackText,
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>const PaymentConfirm()));
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
