import 'package:example_one/sign_in/sign_in_screen.dart';
import 'package:example_one/sign_up/sign_up_screen.dart';
import 'package:flutter/widgets.dart';
import 'forgot_password/forgot_password_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
