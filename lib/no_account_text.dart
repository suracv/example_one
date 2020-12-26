import 'package:example_one/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hesabın yok mu? hemen ", style: textStyle),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text("kayıt ol", style: titleTextStyle),
        ),
      ],
    );
  }
}
