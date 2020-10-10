
import 'package:flutter/widgets.dart';
import 'package:login/screens/account_details/Account_screen.dart';
import 'package:login/screens/cart/cart_screen.dart';
import 'package:login/screens/details/details_screen.dart';
import 'package:login/screens/foodshop/foodshop.dart';
import 'package:login/screens/forgot_password/forgot_password_screen.dart';
import 'package:login/screens/home/home_screen.dart';
import 'package:login/screens/login_success/login_success_screen.dart';
import 'package:login/screens/mobile/mobile_screen.dart';
import 'package:login/screens/otp/otp_screen.dart';
import 'package:login/screens/sign_in/sign_in_screen.dart';
import 'package:login/screens/splash/splash_screen.dart';
import 'package:login/screens/SearchPage/SearchPage.dart';
import 'package:login/screens/checkout/checkout_screen.dart';
import 'package:login/screens/OrderHistory/orderhistory_screen.dart';
import 'package:login/screens/checkout/checkout_screen.dart';
import 'package:login/screens/account_details/Account_Screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name router
// All our routes will be available here
//My Map
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  MobileScreen.routeName: (context) =>MobileScreen(),
 OtpScreen.routeName: (context) => OtpScreen(),
 SearchPage.routeName: (context) =>SearchPage(),
 FoodShop.routeName: (context) => FoodShop(),
  Checkout.routeName: (context)=> Checkout(),
  Order_History.routeName: (context)=> Order_History(),
  Account_screen.routeName: (context)=>Account_screen(),
  // Patment.routeName: (context)=> Patment(),
   //CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  };
