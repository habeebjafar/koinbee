import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koinbee/screens/wallet/buy/components/deposit_body.dart';

class Deposit extends StatefulWidget {
  @override
  _DepositState createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
