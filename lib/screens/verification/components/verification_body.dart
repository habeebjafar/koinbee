import 'package:flutter/material.dart';
import 'package:koinbee/screens/components/button.dart';
import 'package:koinbee/screens/components/inputfield.dart';
import 'package:koinbee/screens/login/login.dart';
import 'package:koinbee/screens/signup/components/background.dart';
import 'package:koinbee/screens/wallet/components/coindata.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Background(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RoundedInputField(
            hintText: "Enter Verification Code Sent To Your Mail",
            onChanged: (value) {
              VERIFICATION = value;
            },
          ),
          RoundedButton(
            text: "VERIFY",
            press: () {
              print('$VERIFICATION');
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
        ],
      ),
    ));
  }
}
