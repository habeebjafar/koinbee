import 'package:flutter/material.dart';
import 'package:koinbee/screens/wallet/crypto%20wallets/components/withdraw_body.dart';

class Withdraw extends StatefulWidget {
  @override
  _WithdrawState createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
