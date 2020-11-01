import 'package:flutter/material.dart';
import 'package:login/screens/OrderGroccery/cart_screen.dart';
import 'package:login/screens/PickupDrop/heavyorder_screen.dart';
import 'package:login/screens/OrderMedicine/cart_screen.dart';
import 'package:login/screens/fooddelivery/HomePage.dart';

import '../../../size_config.dart';
import 'section_title.dart';


class MainCategories extends StatelessWidget {
  const MainCategories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Instant delivery to your doorstep",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/drugs.jpg",
                category: "Medicine Order",
              press: () => Navigator.pushNamed(context, CartScreen1.routeName),

              ),

              SpecialOfferCard(
                image: "assets/images/Home Order.jpg",
                category: "Pickup & Drop",
      
              press: () => Navigator.pushNamed(context, Heavyorder.routeName),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
                              SizedBox(height: getProportionateScreenHeight(20)),

            ],
          ),
        ),
        SingleChildScrollView(
          
          child: Row(
            children: [
                              SizedBox(height: getProportionateScreenHeight(200)),

              SpecialOfferCard(
                image: "assets/images/Food.png",
                category: "Food Delivery",
                press: () => Navigator.pushNamed(context, HomePage.routeName),
              ),
              SpecialOfferCard(
                image: "assets/images/Groccery.jpg",
                category: "Groceries & Essentials",
                
              press: () => Navigator.pushNamed(context, CartScreen2.routeName),

              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(155),
          height: getProportionateScreenWidth(110),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
