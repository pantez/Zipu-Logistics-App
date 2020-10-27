import 'package:flutter/material.dart';
import 'package:login/constants.dart';
//import 'package:login/screens/foodshop/foodshop.dart';
import 'package:login/screens/home/home_screen.dart';
import 'package:login/screens/navigation.dart';
//import 'package:login/screens/mobile/mobile_screen.dart';
//import 'package:login/screens/sign_in/sign_in_screen.dart';
import 'package:login/size_config.dart';

import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Zipu, \nCHANGING THE WAY YOU MOVE THINGS!",
      "image": "assets/images/splash_1.jpg"
    },
    {
      "text":
          "what do you want to get done ? \nWE ARE THERE FOR YOUR PICK UP AND DROP!",
      "image": "assets/images/splash_2.jpg"
    },
    {
      "text": "Better Way To Get Things DONE \nJust Do ZIPU!",
      "image": "assets/images/splash_3.jpg"
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, HomeScreen1.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
