import 'package:flutter/material.dart';
import 'package:login/models/grocceryshop.dart';
import 'package:login/screens/foodshop/foodshop.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class GrocceryShopCard extends StatelessWidget {
  const GrocceryShopCard({
    Key key,
    @required this.shop,
  }) : super(key: key);

  final GrocceryShop shop;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(shop.shoplist.images[0]),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              shop.shoplist.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            GestureDetector(
          onTap: () => Navigator.pushNamed(context, FoodShop.routeName),
          child: Text(
            "Select",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
            
          ],
        )
      ],
    );
  }
}
