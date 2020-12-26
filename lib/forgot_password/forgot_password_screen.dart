import 'package:example_one/constants.dart';
import 'package:flutter/material.dart';
import 'body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Şifremi Unuttum",
          style: titleTextStyle,
        ),
      ),
      body: Body(),
    );
  }
}
