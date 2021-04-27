import 'package:flutter/material.dart';
import 'package:monitor_frontend/models/sensor_log.dart';
import 'package:monitor_frontend/services/sensor_logs.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TempChartPage extends StatefulWidget {
  @override
  _TempChartPageState createState() => _TempChartPageState();
}

class _TempChartPageState extends State<TempChartPage> {
  circularProgress() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  // var newFormat = DateFormat("yy-MM-dd");
  // String updatedDt = newFormat.format(dt);
  // print(updatedDt); // 20-04-03

  List<SensorData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: FutureBuilder<List<SensorLog>>(
          future: SensorLogService.getAllSensorLogs(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Error ${snapshot.error}');
            }
            if (snapshot.hasData) {
              return SfCartesianChart(
                series: <ChartSeries>[
                  SplineSeries<SensorData, dynamic>(
                    dataSource: _chartData,
                    xValueMapper: (SensorData data, _) => data.year,
                    yValueMapper: (SensorData data, _) => data.readings,
                  )
                  // LineSeries<SensorData, double>(
                  //   dataSource: _chartData,
                  //   xValueMapper: (SensorData data, _) => data.year,
                  //   yValueMapper: (SensorData data, _) => data.readings,
                  // ),
                ],
                primaryXAxis: NumericAxis(
                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                  //numeric
                ),
              );
            }
            return circularProgress();
          }),
    ));
  }

  List<SensorData> getChartData() {
    final List<SensorData> chartData = [
      SensorData(DateTime.parse("2017-01-05"), 25),
      SensorData(DateTime.parse("2018-01-05"), 28),
      SensorData(DateTime.parse("2019-01-05"), 25),
      SensorData(DateTime.parse("2020-01-05"), 40),
      SensorData(DateTime.parse("2021-01-05"), 40),
      SensorData(DateTime.parse("2022-01-05"), 35),
      SensorData(DateTime.parse("2023-01-05"), 30),
    ];
    return chartData;
  }
}

class SensorData {
  final DateTime year;
  final double readings;

  SensorData(this.year, this.readings);
}
