
import 'package:flutter/widgets.dart';
import 'package:login/screens/foodshop/foodshop.dart';
import 'package:login/screens/forgot_password/forgot_password_screen.dart';
import 'package:login/screens/login_success/login_success_screen.dart';
import 'package:login/screens/mobile/mobile_screen.dart';
import 'package:login/screens/otp/otp_screen.dart';
import 'package:login/screens/sign_in/sign_in_screen.dart';
import 'package:login/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  MobileScreen.routeName: (context) =>MobileScreen(),
 OtpScreen.routeName: (context) => OtpScreen(),
 FoodShop.routeName: (context) => FoodShop(),
  };
