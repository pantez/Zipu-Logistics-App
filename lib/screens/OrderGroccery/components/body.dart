import 'package:flutter/material.dart';
import 'package:login/models/grocceryshop.dart';

import '../../../size_config.dart';
import 'cart_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: GrocceryShopCard(shop: demoCarts[index]),
      //   press: () => Navigator.pushNamed(context, FoodShop.routeName),


        ),
      ),
    );
  }
}
