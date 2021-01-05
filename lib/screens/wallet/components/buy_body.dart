import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koinbee/constants.dart';
import 'package:koinbee/screens/wallet/buy/eth_wallet.dart';
import 'package:koinbee/screens/wallet/buy/local_currency.dart';
import 'package:koinbee/screens/wallet/buy/tether_wallet.dart';
import 'package:koinbee/screens/wallet/components/coindata.dart';
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
              'How would you like to pay?',
              style: TextStyle(
                  fontFamily: 'Source sans pro',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: kPrimaryColor),
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
                    return Ethereum_wallet();
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
                      iconSrc: "assets/icons/ethereum.svg",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 2.0),
                      child: Column(
                        children: [
                          Text(
                            'ETH wallet',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '       Available ETH  $ETH',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: kPrimaryColor),
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
                    return litecoin_wallet();
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 2.0),
                      child: Column(
                        children: [
                          Text(
                            'Tether wallet',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '       Available Tether   $LTC',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: kPrimaryColor),
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
                    return Local();
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
                      iconSrc: "assets/icons/money-bag.svg",
                      press: () {
                        // _settingModalBottomSheet(context);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 2.0),
                      child: Column(
                        children: [
                          Text(
                            'Local wallet',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '       Available   $Local_Currency',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: kPrimaryColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
