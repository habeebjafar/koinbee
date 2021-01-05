import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koinbee/constants.dart';
import 'package:koinbee/screens/wallet/components/coindata.dart';
import 'package:koinbee/screens/wallet/components/fona_icons.dart';
import 'package:koinbee/screens/wallet/swap/final_swap_btc.dart';
import 'package:koinbee/screens/wallet/swap/final_swap_tether.dart';

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
              'How would you like to pay?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.blue.shade900),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Final_swap_btc();
                  },
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(10.0),
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
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Final_swap_tether();
                  },
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    SocalIcon(
                      iconSrc: "assets/icons/litecoin.svg",
                      press: () {
                        // _settingModalBottomSheet(context);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 2.0),
                      child: Column(
                        children: [
                          Text(
                            'LTC wallet',
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '       Available LTC   $LTC',
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
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/icons/bitcoin.svg",
                    press: () {
                      // _settingModalBottomSheet(context);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Column(
                      children: [
                        Text(
                          'NGN wallet',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '       Available NGN   $Local_Currency',
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
          )
        ],
      ),
    );
  }
}
