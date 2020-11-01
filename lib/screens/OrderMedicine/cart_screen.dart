import 'package:flutter/material.dart';
import 'components/body.dart';

class CartScreen1 extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Order Medicine",
            style: TextStyle(color: Colors.black),
          ),
          
        ],
      ),
    );
  }
}
