import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koinbee/screens/components/button.dart';
import 'package:koinbee/screens/wallet/components/coindata.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Send ETH',
          style: TextStyle(
            fontFamily: 'Source sans pro',
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 3.5,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Recipient Address',
                hintText: 'Recipient Address',
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
                labelText: 'Amount ETH',
                hintText: 'Amount ETH',
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            alignment: AlignmentDirectional.bottomStart,
            child: Text(
              '       Available ETH  $ETH',
              style: TextStyle(
                  fontWeight: FontWeight.w100, color: Colors.blue.shade900),
            ),
          ),
          SizedBox(
            height: 10.5,
          ),
          RoundedButton(
            text: "Send",
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
    );
  }
}
