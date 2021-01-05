import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koinbee/constants.dart';
import 'package:koinbee/screens/razor/razor.dart';
import 'package:koinbee/screens/wallet/components/fona_icons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Buy/Sell',
          style: TextStyle(color: kPrimaryColor),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: Text(
              'How would you like to deposit\n       money in your wallet?',
              style: TextStyle(
                  fontFamily: 'Source sans pro',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: kPrimaryColor),
            ),
          ),
          SizedBox(
            height: 35.0,
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/icons/razorpay.svg",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RazorPayment();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
