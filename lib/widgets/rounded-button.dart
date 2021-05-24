import 'package:flutter/material.dart';
import 'package:gymbuddy/pallete.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.buttonName,
    this.onPressed,
  }) : super(key: key);

  final String buttonName;
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RawMaterialButton(
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.cyan,
        ),
        child: FlatButton(
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: kBodyText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
