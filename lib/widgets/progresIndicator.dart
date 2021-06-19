import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Progresindicator extends StatelessWidget {
  final percent;

  const Progresindicator({this.percent});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CircularPercentIndicator(
      radius: 150.0,
      lineWidth: 10.0,
      backgroundColor: Colors.white,
      percent: percent,
      progressColor: Colors.redAccent,
      circularStrokeCap: CircularStrokeCap.round,
      animation: true,
      center: Text(percent,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    ));
  }
}
