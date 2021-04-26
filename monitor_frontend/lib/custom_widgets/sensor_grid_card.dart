import 'package:flutter/material.dart';
import 'package:monitor_frontend/models/sensor.dart';

class SensorCard extends StatelessWidget {
  final Sensor sensor;

  const SensorCard({Key key, @required this.sensor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(sensor.sensorName),
    );
  }
}
