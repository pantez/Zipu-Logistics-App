import 'package:flutter/material.dart';
import 'package:login/components/default_button.dart';
import 'package:login/constants.dart';
import 'package:login/screens/HeavyOrder/components/senderdetails.dart';
import 'package:login/screens/HeavyOrder/components/splash_content.dart';
import 'package:login/size_config.dart';

//import 'mobile_form.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "image": "assets/images/3.png"
    },
    {
      "image": "assets/images/2.png"
    },
    {
      "image": "assets/images/1.png"
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
                ),
              ),
            ),
            Expanded(
              flex: 6,
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
                    
                         SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.0001),
              Text(
                "Move A Package",
                style: headingStyle,
              ),
                            SizedBox(height: SizeConfig.screenHeight * 0.01),

            Text("Text For any additional information"),
              //MobileForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.01),

                TextFormField(
                 decoration: InputDecoration(
             prefixIcon: Icon(Icons.location_city),

                labelText: 'Pickup Address'
    
             ),
            ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
            const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 2,
            indent: 5,
            endIndent: 5,
          ),
                        SizedBox(height: SizeConfig.screenHeight * 0.01),

            TextFormField(
              decoration: InputDecoration(
             prefixIcon: Icon(Icons.delivery_dining),

                labelText: 'Delivery Address'

              ),
            ),

            SizedBox(height: SizeConfig.screenHeight * 0.01),
          const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 2,
            indent: 5,
            endIndent: 5,
          ),
                        SizedBox(height: SizeConfig.screenHeight * 0.01),

            TextFormField(
              decoration: InputDecoration(
                             prefixIcon: Icon(Icons.storage),

                labelText: 'Select Package Contents'
              ),
              
            )

              
            ],
          ),
        ),
      ),
    ),                    Spacer(),

                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SenderDetails1.routeName);
                      },
                    ),
                                        Spacer(),
Text(
  '* By confirming I accept this order doesnt contain illegal/ restricted items. Zipu partner may ask to verify the contents of the package and could choose to refuse the task if the items arent verified. Terms and Conditions.',
  style: TextStyle(fontSize: 8),
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
        color: currentPage == index ? kPrimaryColor : Colors.black,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
