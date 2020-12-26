import 'package:flutter/material.dart';
import 'package:example_one/default_button.dart';
import 'package:example_one/no_account_text.dart';
import 'package:example_one/constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;

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
                  Text(
                    "hesabınıza geri dönebilmeniz için \nlütfen email adresinizi girin",
                    textAlign: TextAlign.center,
                  ),
                  _fishImage,
                  SizedBox(height: 8),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (newValue) => email = newValue,
                    onChanged: (value) {
                      if (value.isNotEmpty &&
                          errors.contains(kEmailNullError)) {
                        setState(() {
                          errors.remove(kEmailNullError);
                        });
                      } else if (emailValidatorRegExp.hasMatch(value) &&
                          errors.contains(kInvalidEmailError)) {
                        setState(() {
                          errors.remove(kInvalidEmailError);
                        });
                      }
                      return null;
                    },
                    validator: (value) {
                      if (value.isEmpty && !errors.contains(kEmailNullError)) {
                        setState(() {
                          errors.add(kEmailNullError);
                        });
                      } else if (!emailValidatorRegExp.hasMatch(value) &&
                          !errors.contains(kInvalidEmailError)) {
                        setState(() {
                          errors.add(kInvalidEmailError);
                        });
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email_outlined),
                      labelText: "E-mail",
                      hintText: "e-mailinizi girin",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                  SizedBox(height: 30),
                  DefaultButton(
                    text: "Gönder",
                    press: () {},
                  ),
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

  Widget get _fishImage => Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: new Image(
            width: 250.0,
            height: 191.0,
            fit: BoxFit.fill,
            image: new AssetImage('assets/img/fish.png')),
      );
}
