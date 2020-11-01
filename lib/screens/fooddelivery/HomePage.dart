import 'package:flutter/material.dart';
import 'package:login/animation/ScaleRoute.dart';
import 'package:login/screens/fooddelivery/pages/FoodOrderPage.dart';
import 'package:login/screens/fooddelivery/widgets/BestFoodWidget.dart';
import 'package:login/screens/fooddelivery/widgets/PopularFoodsWidget.dart';
import 'package:login/screens/fooddelivery/widgets/SearchWidget.dart';
import 'package:login/screens/fooddelivery/widgets/TopMenus.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/fooddelivery";

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "What would you like to eat?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {Navigator.push(context, ScaleRoute(page: FoodOrderPage()));})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
            BestFoodWidget(),
          ],
        ),
      ),
    );
  }
}
