import 'package:flutter/material.dart';
import 'package:koinbee/screens/home/body.dart';

class RewardPage extends StatefulWidget {
  @override
  _RewardPageState createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LineChartSample2()),
    );
  }
}
