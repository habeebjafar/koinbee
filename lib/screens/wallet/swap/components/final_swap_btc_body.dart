import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koinbee/constants.dart';
import 'package:koinbee/screens/components/button.dart';
import 'package:koinbee/screens/wallet/components/coindata.dart';
import 'package:koinbee/screens/wallet/components/fona_icons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: Text(
              'How much would you want to swap?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.blue.shade900),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Currency',
                      hintText: 'BTC',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Amount',
                      hintText: '0.00000000',
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              'Available BTC $BTC',
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontFamily: 'Source sans pro',
                  fontSize: 12.0,
                  color: Colors.grey,
                  letterSpacing: 3.5),
            ),
          ),
          Card(
            color: Colors.lightBlue.shade50,
            margin: EdgeInsets.all(30.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/icons/bitcoin.svg",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Column(
                      children: [
                        Text(
                          'BTC wallet',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '       Available BTC  $BTC',
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              color: Colors.blue.shade900),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.0,
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
    );
  }
}
