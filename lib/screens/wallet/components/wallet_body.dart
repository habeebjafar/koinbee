import 'package:flutter/material.dart';
import 'package:koinbee/constants.dart';
import 'package:koinbee/screens/wallet/buy.dart';
import 'package:koinbee/screens/wallet/buy/pay_for_eth.dart';
import 'package:koinbee/screens/wallet/buy/pay_for_tether.dart';
import 'package:koinbee/screens/wallet/components/coindata.dart';
import 'package:koinbee/screens/wallet/components/fona_icons.dart';
import 'package:koinbee/screens/wallet/crypto%20wallets/btc.dart';
import 'package:koinbee/screens/wallet/crypto%20wallets/btc_send.dart';
import 'package:koinbee/screens/wallet/crypto%20wallets/eth.dart';
import 'package:koinbee/screens/wallet/crypto%20wallets/eth_send.dart';
import 'package:koinbee/screens/wallet/crypto%20wallets/local.dart';
import 'package:koinbee/screens/wallet/crypto%20wallets/tether.dart';
import 'package:koinbee/screens/wallet/crypto%20wallets/tether_send.dart';
import 'package:koinbee/screens/wallet/swap/swap_btc.dart';
import 'package:koinbee/screens/wallet/swap/swap_eth.dart';
import 'package:koinbee/screens/wallet/swap/swap_tether.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wallet',
          style: TextStyle(
            fontFamily: 'Source sans pro',
            letterSpacing: 3.5,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                _settingModalBottomSheet(context);
                              },
                              child: Column(
                                children: [
                                  SocalIcon(
                                    iconSrc: "assets/icons/bitcoin.svg",
                                    press: () {
                                      _settingModalBottomSheet(context);
                                    },
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _settingModalBottomSheet(context);
                                    },
                                    child: Text(
                                      'Buy',
                                      style: TextStyle(
                                        fontFamily: 'Source sans pro',
                                        letterSpacing: 3.5,
                                        color: Colors.black,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                sellBottomSheet(context);
                              },
                              child: Column(
                                children: [
                                  SocalIcon(
                                    iconSrc: "assets/icons/money.svg",
                                    press: () {
                                      sellBottomSheet(context);
                                    },
                                  ),
                                  Text(
                                    'Swap',
                                    style: TextStyle(
                                      fontFamily: 'Source sans pro',
                                      letterSpacing: 3.5,
                                      color: Colors.black,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                sendBottomSheet(context);
                              },
                              child: Column(
                                children: [
                                  SocalIcon(
                                    iconSrc: "assets/icons/save-money.svg",
                                    press: () {
                                      sendBottomSheet(context);
                                    },
                                  ),
                                  Text(
                                    'Send',
                                    style: TextStyle(
                                      fontFamily: 'Source sans pro',
                                      letterSpacing: 3.5,
                                      color: Colors.black,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                receiveBottomSheet(context);
                              },
                              child: Column(
                                children: [
                                  SocalIcon(
                                    iconSrc: "assets/icons/qr-code.svg",
                                    press: () {
                                      receiveBottomSheet(context);
                                    },
                                  ),
                                  Text(
                                    'Receive',
                                    style: TextStyle(
                                      fontFamily: 'Source sans pro',
                                      letterSpacing: 3.5,
                                      color: Colors.black,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 20.0,
                    child: Divider(
                      color: kPrimaryLightColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'LOCAL CURRENCY',
                        style: TextStyle(
                            fontFamily: 'Source sans pro',
                            letterSpacing: 3.5,
                            fontSize: 11.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade400),
                      ),
                    ],
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
                      margin: EdgeInsets.all(5.0),
                      elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            SocalIcon(
                              iconSrc: "assets/icons/money-bag.svg",
                              //   press: () {},
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'Local Currency',
                              style: TextStyle(
                                  fontFamily: 'Source sans pro',
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 20.0,
                    child: Divider(
                      color: kPrimaryLightColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'CRYPTOCURRENCY',
                        style: TextStyle(
                            fontFamily: 'Source sans pro',
                            letterSpacing: 3.5,
                            fontSize: 11.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Btc();
                          },
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.all(10.0),
                      elevation: 5.0,
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Stack(children: <Widget>[
                          Align(
                            alignment: Alignment.centerRight,
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            SocalIcon(
                                                iconSrc:
                                                    "assets/icons/bitcoin.svg"),
                                            cryptoNameSymbol('BTC'),
                                            Spacer(),
                                            cryptoAmount('$L_BTC', '\n' '$BTC'),
                                            SizedBox(
                                              width: 5,
                                            )
                                          ],
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Eth();
                          },
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5.0,
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Stack(children: <Widget>[
                          Align(
                            alignment: Alignment.centerRight,
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            SocalIcon(
                                                iconSrc:
                                                    "assets/icons/ethereum.svg"),
                                            // SizedBox(
                                            //   height: 5.0,
                                            // ),
                                            cryptoNameSymbol('ETH'),
                                            Spacer(),
                                            cryptoAmount('$L_ETH', '\n' '$ETH'),
                                            // SizedBox(
                                            //   width: 5,
                                            // ),
                                            SizedBox(
                                              width: 5,
                                            )
                                          ],
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Tether();
                          },
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5.0,
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Stack(children: <Widget>[
                          Align(
                            alignment: Alignment.centerRight,
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            SocalIcon(
                                                iconSrc:
                                                    "assets/icons/litecoin.svg"),
                                            // SizedBox(
                                            //   height: 5.0,
                                            // ),
                                            cryptoNameSymbol('Tether'),
                                            Spacer(),
                                            cryptoAmount('$L_LTC', '\n' '$LTC'),
                                            // SizedBox(
                                            //   width: 5,
                                            // ),
                                            SizedBox(
                                              width: 5,
                                            )
                                          ],
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget cryptoNameSymbol(String coin) {
  return Align(
    alignment: Alignment.centerLeft,
    child: RichText(
      text: TextSpan(
        text: '$coin',
        style: TextStyle(
            fontFamily: 'Source sans pro',
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
            fontSize: 15),
      ),
    ),
  );
}

Widget cryptoAmount(String local, String crypto) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Row(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: '\n$local',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: '$crypto',
                    style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                leading: new SocalIcon(iconSrc: "assets/icons/bitcoin.svg"),
                title: new Text('BTC'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return BuyPage();
                      },
                    ),
                  );
                },
              ),
              new ListTile(
                leading: new SocalIcon(iconSrc: "assets/icons/ethereum.svg"),
                title: new Text('ETH'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Pay_for_eth();
                      },
                    ),
                  );
                },
              ),
              new ListTile(
                leading: new SocalIcon(iconSrc: "assets/icons/litecoin.svg"),
                title: new Text('Tether'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Pay_for_ltc();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        );
      });
}

void sellBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                leading: new SocalIcon(iconSrc: "assets/icons/bitcoin.svg"),
                title: new Text('BTC'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Swap_btc();
                      },
                    ),
                  );
                },
              ),
              new ListTile(
                leading: new SocalIcon(iconSrc: "assets/icons/ethereum.svg"),
                title: new Text('ETH'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Swap_eth();
                      },
                    ),
                  );
                },
              ),
              new ListTile(
                leading: new SocalIcon(iconSrc: "assets/icons/litecoin.svg"),
                title: new Text('Tether'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Swap_tether();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        );
      });
}

void receiveBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                leading: new SocalIcon(iconSrc: "assets/icons/bitcoin.svg"),
                title: new Text('BTC'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Btc();
                      },
                    ),
                  );
                },
              ),
              new ListTile(
                leading: new SocalIcon(iconSrc: "assets/icons/ethereum.svg"),
                title: new Text('ETH'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Eth();
                      },
                    ),
                  );
                },
              ),
              new ListTile(
                leading: new SocalIcon(iconSrc: "assets/icons/litecoin.svg"),
                title: new Text('Tether'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Swap_tether();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        );
      });
}

void sendBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                leading: new SocalIcon(iconSrc: "assets/icons/bitcoin.svg"),
                title: new Text('BTC'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Btc_send();
                      },
                    ),
                  );
                },
              ),
              new ListTile(
                leading: new SocalIcon(iconSrc: "assets/icons/ethereum.svg"),
                title: new Text('ETH'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Eth_send();
                      },
                    ),
                  );
                },
              ),
              new ListTile(
                leading: new SocalIcon(iconSrc: "assets/icons/litecoin.svg"),
                title: new Text('Tether'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Tether_send();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        );
      });
}
