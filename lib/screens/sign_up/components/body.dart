import 'package:flutter/material.dart';
import 'package:flutter_auth/components/already_have_an_account_check.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/screens/login/login_screen.dart';
import 'package:flutter_auth/screens/sign_up/components/background.dart';
import 'package:flutter_auth/screens/sign_up/components/or_divider.dart';
import 'package:flutter_auth/screens/sign_up/components/social_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sign Up",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (String value) {},
          ),
          RoundedButton(text: "Sign Up", press: () {}),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return LoginScreen();
                })));
              }),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(iconSrc: "assets/icons/facebook.svg",press: (){},),
              SocialIcon(iconSrc: "assets/icons/twitter.svg",press: (){},),
              SocialIcon(iconSrc: "assets/icons/google-plus.svg",press: (){},),
              ],
          )
        ],
      ),
    ));
  }
}


