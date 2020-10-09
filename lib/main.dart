import 'package:flutter/material.dart';
import 'package:login/routes.dart';
import 'package:login/screens/splash/splash_screen.dart';
import 'package:login/theme.dart';
import 'package:login/screens/SearchPage/SearchPage.dart';
import 'package:login/screens/checkout/checkout_screen.dart';
import 'package:login/screens/OrderHistory/orderhistory_screen.dart';
import 'package:login/screens/account_details/Account_screen.dart';
import 'package:login/screens/payment/payment_Screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: Account_screen.routeName,
      routes: routes,
    );
    // return SearchPage();
  }
}
