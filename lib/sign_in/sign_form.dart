import 'package:example_one/forgot_password/forgot_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:example_one/default_button.dart';
import 'package:example_one/constants.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _emailFormField(),
          SizedBox(height: 30),
          _passwordFormField(),
          SizedBox(height: 20),
          Row(
            children: [
              _rememberMe,
              Text("Remember me"),
              Spacer(),
              _forgotPass,
            ],
          ),
          SizedBox(height: 15),
          DefaultButton(
            text: "Giriş yap",
            press: () {},
          ),
        ],
      ),
    );
  }

  TextFormField _passwordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.lock_outline),
        labelText: "Şifre",
        hintText: "şifrenizi girin",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField _emailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.email_outlined),
        labelText: "Email",
        hintText: "e-mailinizi girin",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  Widget get _rememberMe => Checkbox(
        value: remember,
        activeColor: Colors.black,
        onChanged: (value) {
          setState(() {
            remember = value;
          });
        },
      );

  Widget get _forgotPass => GestureDetector(
        onTap: () =>
            Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
        child: Text(
          "Şifremi Unuttum",
          style: TextStyle(decoration: TextDecoration.underline),
        ),
      );
}
