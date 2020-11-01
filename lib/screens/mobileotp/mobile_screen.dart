import 'package:flutter/material.dart';
import 'package:login/size_config.dart';

import 'components/body.dart';

class MobileScreen extends StatelessWidget {
  static String routeName = "/mobileotp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile Verification"),
      ),
      body: Body(),
    );
  }
}
