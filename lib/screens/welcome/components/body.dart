import 'package:flutter/material.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/screens/login/login_screen.dart';
import 'package:flutter_auth/screens/sign_up/signup_screen.dart';
import 'package:flutter_auth/screens/welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to edu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.5,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: "Login",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            RoundedButton(
              text: "Sign Up",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              color: kPrimaryLigthColor,
              textColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
