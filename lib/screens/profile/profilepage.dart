import 'package:flutter/material.dart';
import 'package:koinbee/screens/profile/body.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}
