import 'package:flutter/material.dart';
import 'package:login/size_config.dart';

import 'components/body.dart';

class Heavyorder extends StatelessWidget {
  static String routeName = "/HeavyOrder";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Move an Item"),
      ),
      body: Body(),
    );
  }
}
