import 'dart:math';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:koinbee/constants.dart';
import 'package:koinbee/screens/components/button.dart';
import 'package:koinbee/screens/wallet/buy/pay_for_eth.dart';
import 'package:koinbee/screens/wallet/components/coindata.dart';
import 'package:koinbee/screens/wallet/components/fona_icons.dart';
import 'package:koinbee/screens/wallet/crypto%20wallets/btc_send.dart';
import 'package:koinbee/screens/wallet/crypto%20wallets/eth_send.dart';
import 'package:koinbee/screens/wallet/swap/swap_btc.dart';
import 'package:koinbee/screens/wallet/swap/swap_eth.dart';
import 'package:koinbee/screens/wallet/swap/swap_tether.dart';
import 'package:flutter_svg/flutter_svg.dart';

const CURVE_HEIGHT = 160.0;
const AVATAR_RADIUS = CURVE_HEIGHT * 0.28;
const AVATAR_DIAMETER = AVATAR_RADIUS * 2;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: [
          _buildContent(),
          CurvedShape(),
          Container(
            margin: EdgeInsets.only(top: CURVE_HEIGHT - AVATAR_DIAMETER),
            width: double.infinity,
            height: AVATAR_DIAMETER,
            padding: EdgeInsets.all(8),
            child: Container(
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                //color: Colors.deepOrangeAccent[400],
              ),
              child: new SvgPicture.asset(
                "assets/icons/ethereum.svg",
                height: 20,
                width: 20,
                //color: Colors.orange,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, CURVE_HEIGHT, 16, 16),
        child: Column(
          children: <Widget>[
            Container(
              alignment: AlignmentDirectional.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'ETH $ETH',
                    style: TextStyle(
                        fontFamily: 'Source sans pro',
                        fontWeight: FontWeight.w100,
                        fontSize: 20.0,
                        color: kPrimaryColor),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SelectableText(
                    '$A_ETH',
                    style: TextStyle(
                        fontFamily: 'Source sans pro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w100,
                        color: kPrimaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
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
                                return Pay_for_eth();
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
                                      return Pay_for_eth();
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
                                      return Pay_for_eth();
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
                                return Btc_send();
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
                                      return Eth_send();
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
                                      return Eth_send();
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
              text: "Buy ETH",
              press: () {
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
          ],
        ),
      ),
    );
  }
}

class CurvedShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: CURVE_HEIGHT,
      child: CustomPaint(
        painter: _MyPainter(),
      ),
    );
  }
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = Colors.black45;

    Offset circleCenter = Offset(size.width / 2, size.height - AVATAR_RADIUS);

    Offset topLeft = Offset(0, 0);
    Offset bottomLeft = Offset(0, size.height * 0.25);
    Offset topRight = Offset(size.width, 0);
    Offset bottomRight = Offset(size.width, size.height * 0.5);

    Offset leftCurveControlPoint =
        Offset(circleCenter.dx * 0.5, size.height - AVATAR_RADIUS * 1.5);
    Offset rightCurveControlPoint =
        Offset(circleCenter.dx * 1.6, size.height - AVATAR_RADIUS);

    final arcStartAngle = 200 / 180 * pi;
    final avatarLeftPointX =
        circleCenter.dx + AVATAR_RADIUS * cos(arcStartAngle);
    final avatarLeftPointY =
        circleCenter.dy + AVATAR_RADIUS * sin(arcStartAngle);
    Offset avatarLeftPoint =
        Offset(avatarLeftPointX, avatarLeftPointY); // the left point of the arc

    final arcEndAngle = -5 / 180 * pi;
    final avatarRightPointX =
        circleCenter.dx + AVATAR_RADIUS * cos(arcEndAngle);
    final avatarRightPointY =
        circleCenter.dy + AVATAR_RADIUS * sin(arcEndAngle);
    Offset avatarRightPoint = Offset(
        avatarRightPointX, avatarRightPointY); // the right point of the arc

    Path path = Path()
      ..moveTo(topLeft.dx,
          topLeft.dy) // this move isn't required since the start point is (0,0)
      ..lineTo(bottomLeft.dx, bottomLeft.dy)
      ..quadraticBezierTo(leftCurveControlPoint.dx, leftCurveControlPoint.dy,
          avatarLeftPoint.dx, avatarLeftPoint.dy)
      ..arcToPoint(avatarRightPoint, radius: Radius.circular(AVATAR_RADIUS))
      ..quadraticBezierTo(rightCurveControlPoint.dx, rightCurveControlPoint.dy,
          bottomRight.dx, bottomRight.dy)
      ..lineTo(topRight.dx, topRight.dy)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
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
                leading: new SelectableText('$A_ETH'),
              ),
            ],
          ),
        );
      });
}
