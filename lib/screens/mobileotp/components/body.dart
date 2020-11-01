import 'package:flutter/material.dart';
import 'package:login/constants.dart';
import 'package:login/size_config.dart';

import 'mobile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "Mobile Verification",
                style: headingStyle,
              ),
              Text("A OTP will be deliverd on your mobile number"),
              MobileForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              
              
            ],
          ),
        ),
      ),
    );
  }

}
