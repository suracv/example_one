import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFF3ECD8);

const textColor = Color(0xFF757575);

final textStyle = TextStyle(
  fontSize: 16,
  fontFamily: "Playfair-Display",
  color: Color(0xFF14171A),
);

final titleTextStyle = TextStyle(
  fontSize: 19,
  fontWeight: FontWeight.bold,
  fontFamily: "Playfair-Display",
  color: Color(0xFF14171A),
);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Lütfen e-mailinizi girin";
const String kInvalidEmailError = "Lütfen geçerli bir e-mail girin";
const String kPassNullError = "Lütfen şifrenizi girin";
const String kShortPassError = "Şifre çok kısa";
const String kMatchPassError = "Şifreler uyuşmuyor";
