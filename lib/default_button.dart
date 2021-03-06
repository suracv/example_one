import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        color: Color(0xFF564F8B),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Playfair-Display",
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
