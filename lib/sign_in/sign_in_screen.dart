import 'package:example_one/no_account_text.dart';
import 'package:flutter/material.dart';
import 'sign_form.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _workSVG,
                  SizedBox(height: 8),
                  SignForm(),
                  SizedBox(height: 20),
                  NoAccountText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget get _workSVG => Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: new Image(
            width: 250.0,
            height: 191.0,
            fit: BoxFit.fill,
            image: new AssetImage('assets/img/work.png')),
      );
}
