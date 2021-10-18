import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lazzypay/constants/colors.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  void _EndScreens(context) {
    Navigator.pop(context);
// Navigator.of(context).push(
    // MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showDoneButton: true,
        showNextButton: true,
        //  showSkipButton: true,
        next: const Text('Next'),
        // skip: Text('Skip'),
        done: const Text('Done'),

        onDone: () {
          _EndScreens(context);
        },
        onSkip: () {
          _EndScreens(context);
        },

        pages: [
          PageViewModel(
            image: Image.asset(
              'assets/images/logo.png',
              width: 300,
              height: 300,
            ),
            title: 'Welcome to Lazzypay The most advanced Buy Now Pay Later Platform in the middle east',
            // body: 'live Demo Text',
            // footer: const Text('Footer Text'),
            decoration: const PageDecoration(
              pageColor: whiteColor,
            ),
          ),
          PageViewModel(
              image: Image.asset(
                'images/wens.png',
                width: 300,
                height: 300,
              ),
              title: 'Live Demo Page 1',
              body: 'live Demo Text',
              footer: const Text('Footer Text'),
              decoration: const PageDecoration(
                pageColor: whiteColor,
              ))
        ],

        dotsDecorator: const DotsDecorator(
         // size: Size(30.0, 32.0),
          color: Color(0xFF080606),
          activeSize: Size(59.0, 2.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          color: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}
