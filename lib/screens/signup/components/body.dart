import 'package:flutter/material.dart';
import 'package:koinbee/constants.dart';
import 'package:koinbee/screens/components/account_check.dart';
import 'package:koinbee/screens/components/button.dart';
import 'package:koinbee/screens/components/inputfield.dart';
import 'package:koinbee/screens/components/passwordfield.dart';
import 'package:koinbee/screens/login/login.dart';
import 'package:koinbee/screens/signup/components/background.dart';
import 'package:koinbee/screens/signup/components/divider.dart';
import 'package:koinbee/screens/signup/components/icons.dart';
import 'package:koinbee/screens/verification/verification.dart';
import 'package:koinbee/screens/wallet/components/coindata.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(
                  fontFamily: 'Source sans pro',
                  fontSize: 18.0,
                  color: kPrimaryLightColor,
                  letterSpacing: 3.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Name",
              onChanged: (value) {
                NAME = value;
              },
            ),
            RoundedInputField(
                hintText: "Your Mobile Number",
                onChanged: (value) {
                  MoBILE_NUMBER = value;
                }),
            RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {
                  EMAIL = value;
                }),
            RoundedPasswordField(
                hintText: "Password",
                onChanged: (value) {
                  PASSWORD = value;
                }),
            RoundedPasswordField(
              hintText: "Confirm Password",
              onChanged: (String string) {
                setState(() {
                  CONFIRM_PASSWORD = string;
                });
              },
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                print('$CONFIRM_PASSWORD');
                print('$PASSWORD');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Verification_Page();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
