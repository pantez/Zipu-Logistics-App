import 'package:flutter/material.dart';
import 'components/body.dart';

class CartScreen2 extends StatelessWidget {
  static String routeName = "/";
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
            "Order Grocery",
            style: TextStyle(color: Colors.black),
          ),
          
        ],
      ),
    );
  }
}
