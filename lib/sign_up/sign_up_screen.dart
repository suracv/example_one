import 'package:example_one/constants.dart';
import 'package:flutter/material.dart';
import 'sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aramıza Hoş Geldiniz!",
          style: titleTextStyle,
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  welcomeSVG,
                  SizedBox(height: 8),
                  SignUpForm(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget get welcomeSVG => Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: new Image(
            width: 250.0,
            height: 200.0,
            fit: BoxFit.fill,
            image: new AssetImage('assets/img/welcome.png')),
      );
}
