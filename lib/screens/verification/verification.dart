import 'package:flutter/material.dart';
import 'package:koinbee/screens/verification/components/verification_body.dart';

class Verification_Page extends StatefulWidget {
  @override
  _Verification_PageState createState() => _Verification_PageState();
}

class _Verification_PageState extends State<Verification_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
