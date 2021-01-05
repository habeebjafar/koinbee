import 'package:flutter/material.dart';
import 'package:koinbee/screens/wallet/buy/components/local_currency_body.dart';

class Local extends StatefulWidget {
  @override
  _LocalState createState() => _LocalState();
}

class _LocalState extends State<Local> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
