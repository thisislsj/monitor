import 'package:flutter/material.dart';
import 'package:monitor_frontend/models/sensor.dart';
import 'package:monitor_frontend/screens/single_sensor_page.dart';

class SensorCard extends StatelessWidget {
  SensorCard({Key key, @required this.sensor}) : super(key: key);

  final Sensor sensor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 300,
              //height: 500,
              padding: EdgeInsets.all(8),

              color: (sensor.sensorType == "Temperature")
                  ? Colors.amber
                  : ((sensor.sensorType == "Humedity")
                      ? Colors.blueAccent
                      : Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sensor.sensorName,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(sensor.sensorType),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SingleSensorPage(
                                  sensor: sensor,
                                )),
                      ),
                      print(sensor.sensorCode)
                    },
                    child: Text("View Logs"),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(sensor.sensorCode)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
