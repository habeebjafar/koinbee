import 'package:flutter/material.dart';
import 'package:koinbee/screens/wallet/buy.dart';
import 'package:koinbee/screens/wallet/buy/pay_for_eth.dart';
import 'package:koinbee/screens/wallet/buy/pay_for_tether.dart';
import 'package:koinbee/screens/wallet/components/fona_icons.dart';
import 'package:koinbee/screens/wallet/crypto%20wallets/btc.dart';
import 'package:koinbee/screens/wallet/swap/swap_btc.dart';
import 'package:koinbee/screens/wallet/swap/swap_eth.dart';
import 'package:koinbee/screens/wallet/swap/swap_tether.dart';

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
