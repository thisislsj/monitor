import 'package:flutter/material.dart';
import 'package:monitor_frontend/models/sensor.dart';
import 'package:monitor_frontend/models/sensor_log.dart';
import 'package:monitor_frontend/services/sensor_logs.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SingleSensorPage extends StatefulWidget {
  const SingleSensorPage({Key key, @required this.sensor}) : super(key: key);
  final Sensor sensor;

  @override
  _SingleSensorState createState() => _SingleSensorState();
}

class _SingleSensorState extends State<SingleSensorPage> {
  circularProgress() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title:
            Text("${widget.sensor.sensorName} | ${widget.sensor.sensorCode}"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          FutureBuilder(
              future:
                  SensorLogService.getSingleSensorLog(widget.sensor.sensorCode),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Error ${snapshot.error}');
                }
                if (snapshot.hasData) {
                  print(snapshot.data);
                  String val =
                      "${snapshot.data[snapshot.data.length - 1].sensorValue}";
                  return Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(
                            "Last Recorded Value: $val ",
                            textAlign: TextAlign.center,
                            // style: TextStyle(
                            //     fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SfCartesianChart(
                        primaryXAxis: DateTimeAxis(),
                        series: <ChartSeries>[
                          SplineSeries<SensorLog, dynamic>(
                            dataSource: snapshot.data,
                            xValueMapper: (SensorLog data, _) =>
                                DateTime.parse(data.sensorDataOriginTime),
                            yValueMapper: (SensorLog data, _) =>
                                data.sensorValue,
                          ),
                        ],
                      ),
                    ],
                  );
                }
                return circularProgress();
              }),
        ],
      ),
    ));
  }
}
