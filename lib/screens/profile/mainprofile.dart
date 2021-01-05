import 'package:flutter/material.dart';
import 'package:koinbee/screens/components/inputfield.dart';
import 'package:koinbee/screens/components/passwordfield.dart';

class MainProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Source sans pro',
            letterSpacing: 3.5,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 90.0,
              ),
              RoundedInputField(
                hintText: "Fona",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "08185415188",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "osaofonaerhabor@gmail.com",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                hintText: "Password",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                hintText: "Confirm Password",
                onChanged: (value) {},
              ),
            ]),
      ),
    );
  }
}
