import 'package:flutter/material.dart';
import 'package:koinbee/constants.dart';
import 'package:koinbee/screens/components/account_check.dart';
import 'package:koinbee/screens/components/body.dart';
import 'package:koinbee/screens/components/button.dart';
import 'package:koinbee/screens/components/inputfield.dart';
import 'package:koinbee/screens/components/passwordfield.dart';
import 'package:koinbee/screens/login/components/background.dart';
import 'package:koinbee/screens/signup/signup.dart';
import 'package:koinbee/screens/wallet/components/coindata.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(
                  fontFamily: 'Source sans pro',
                  fontSize: 18.0,
                  color: kPrimaryColor,
                  letterSpacing: 3.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 200.0,
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                EMAIL = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                PASSWORD = value;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
