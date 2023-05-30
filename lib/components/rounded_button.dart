import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,  required this.text,  required this.press,  this.color=kPrimaryColor,  this.textColor=Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: ElevatedButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(color)),
            onPressed: () =>press(),
            child: Text(
              text,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}
