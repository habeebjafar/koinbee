import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koinbee/screens/components/button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Banks in Nigeria',
                  hintText: 'Banks in Nigeria',
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Bank account holder\'s full name',
                  hintText: 'Account Name',
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Account number',
                  hintText: '',
                ),
              ),
            ),
            SizedBox(
              height: 10.5,
            ),
            RoundedButton(
              text: "Next",
              press: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return HomePage();
                //     },
                //   ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
