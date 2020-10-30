
import 'package:flutter/widgets.dart';
import 'package:login/screens/OrderMedicine/OrderScreen.dart';
import 'package:login/screens/PickupDrop/components/OrderDetails.dart';
import 'package:login/screens/PickupDrop/components/Reciverdetails.dart';
import 'package:login/screens/PickupDrop/components/senderdetails.dart';
import 'package:login/screens/PickupDrop/heavyorder_screen.dart';
import 'package:login/screens/OrderHistory/orderhistory_screen.dart';
import 'package:login/screens/OrderMedicine/cart_screen.dart';
import 'package:login/screens/cart/cart_screen.dart';
import 'package:login/screens/checkout/checkout_screen.dart';
import 'package:login/screens/details/details_screen.dart';
import 'package:login/screens/fooddelivery/HomePage.dart';
import 'package:login/screens/foodshop/foodshop.dart';
import 'package:login/screens/forgot_password/forgot_password_screen.dart';
import 'package:login/screens/home/home_screen.dart';
import 'package:login/screens/login_success/login_success_screen.dart';
import 'package:login/screens/medicine/medicine_screen.dart';
import 'package:login/screens/mobile/mobile_screen.dart';
import 'package:login/screens/navigation.dart';
//import 'package:login/screens/navigation.dart';
import 'package:login/screens/otp/otp_screen.dart';
import 'package:login/screens/sign_in/sign_in_screen.dart';
import 'package:login/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  
     //CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),

  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  MobileScreen.routeName: (context) =>MobileScreen(),
 OtpScreen.routeName: (context) => OtpScreen(),
 FoodShop.routeName: (context) => FoodShop(),

  HomeScreen.routeName: (context) => HomeScreen(),
DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  Checkout.routeName: (context) => Checkout(),
  Oder_History.routeName: (context) => Oder_History(),
  MedicineScreen.routeName: (context) => MedicineScreen(),
  Heavyorder.routeName: (context) => Heavyorder(),
  HomeScreen1.routeName: (context) => HomeScreen1(),
    //BottomNavBar.routeName: (context) => BottomNavBar(),
  CartScreen1.routeName: (context) => CartScreen1(),
  SenderDetails1.routeName: (context) =>  SenderDetails1(),
  Receiver1.routeName: (context) =>  Receiver1(),
  OrderDetails.routeName: (context) => OrderDetails(),
OrderScreen.routeName: (context) => OrderScreen(),
HomePage.routeName: (context) => HomePage(),

  };
