import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koinbee/constants.dart';
import 'package:koinbee/screens/components/button.dart';
import 'package:koinbee/screens/wallet/buy.dart';
import 'package:koinbee/screens/wallet/buy/pay_for_eth.dart';
import 'package:koinbee/screens/wallet/buy/pay_for_tether.dart';
import 'package:koinbee/screens/wallet/components/coindata.dart';
import 'package:koinbee/screens/wallet/components/fona_icons.dart';
import 'package:koinbee/screens/wallet/crypto%20wallets/tether_send.dart';
import 'package:koinbee/screens/wallet/swap/swap_btc.dart';
import 'package:koinbee/screens/wallet/swap/swap_eth.dart';
import 'package:koinbee/screens/wallet/swap/swap_tether.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: AlignmentDirectional.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/litecoin.svg",
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'TETHER $LTC',
                  style: TextStyle(
                      fontFamily: 'Source sans pro',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue.shade900),
                ),
                SizedBox(
                  height: 15,
                ),
                SelectableText(
                  '$A_TETHER',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Card(
            margin: EdgeInsets.all(8.0),
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
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
                      child: Column(
                        children: [
                          SocalIcon(
                            iconSrc: "assets/icons/bitcoin.svg",
                            press: () {
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
                          GestureDetector(
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
                            child: Text(
                              'Buy',
                              style: TextStyle(
                                fontFamily: 'Source sans pro',
                                letterSpacing: 3.5,
                                color: kPrimaryColor,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Swap_tether();
                            },
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          SocalIcon(
                            iconSrc: "assets/icons/money.svg",
                            press: () {
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
                          Text(
                            'Swap',
                            style: TextStyle(
                              fontFamily: 'Source sans pro',
                              letterSpacing: 3.5,
                              color: kPrimaryColor,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Tether_send();
                            },
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          SocalIcon(
                            iconSrc: "assets/icons/save-money.svg",
                            press: () {
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
                          GestureDetector(
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
                            child: Text(
                              'Send',
                              style: TextStyle(
                                fontFamily: 'Source sans pro',
                                letterSpacing: 3.5,
                                color: kPrimaryColor,
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
                              color: kPrimaryColor,
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
          Container(
            margin: EdgeInsets.all(8.0),
            height: 400.0,
            width: 380.0,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[],
              ),
            ),
          ),
          RoundedButton(
            text: "Buy Tether",
            press: () {
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
  }
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
                leading: new SelectableText('$A_TETHER'),
              ),
            ],
          ),
        );
      });
}
