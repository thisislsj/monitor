import 'package:flutter/material.dart';
import 'package:monitor_frontend/models/sensor.dart';

class SensorCard extends StatelessWidget {
  final Sensor sensor;

  const SensorCard({Key key, @required this.sensor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Container(
      //   padding: EdgeInsets.all(10),
      //   height: 200,

      //   child: Card(

      //     child: Column(
      //       children: [
      //         Text(sensor.sensorName),
      //       ],
      //     ),
      //   ),
      // ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.all(8),
            //height: 100,
            //width: 200,
            color: Colors.green,
            child: Column(
              children: [
                Text(
                  sensor.sensorName,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(sensor.sensorType),
              ],
            ),
          ),
        ),
      ),
    );
    // return Container(
    //   child: Text(sensor.sensorName),
    // );
  }
}
