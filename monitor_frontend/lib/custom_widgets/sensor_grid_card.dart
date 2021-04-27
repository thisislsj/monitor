import 'package:flutter/material.dart';
import 'package:monitor_frontend/models/sensor.dart';
import 'package:monitor_frontend/screens/temp_chart_page.dart';

class SensorCard extends StatelessWidget {
  final Sensor sensor;

  const SensorCard({Key key, @required this.sensor}) : super(key: key);
  sensorCardClick(Sensor sensor) {
    print("Tapped ${sensor.sensorName}");
  }

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

      child: GestureDetector(
        onTap: sensorCardClick(sensor),
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
                  // Text(
                  //   '${sensor.sensorThresholdValue}',
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  // ),
                  ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TempChartPage()),
                      ),
                      print(sensor.sensorCode)
                    },
                    child: Text("View Logs"),
                  ),
                ],
              ),
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
