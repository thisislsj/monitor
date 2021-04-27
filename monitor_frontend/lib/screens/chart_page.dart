import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
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
      body: SfCartesianChart(
        series: <ChartSeries>[
          SplineSeries<SensorData, double>(
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
      ),
    ));
  }

  List<SensorData> getChartData() {
    final List<SensorData> chartData = [
      SensorData(2017, 25),
      SensorData(2018, 28),
      SensorData(2019, 25),
      SensorData(2020, 40),
      SensorData(2021, 35),
      SensorData(2022, 30),
    ];
    return chartData;
  }
}

class SensorData {
  final double year;
  final double readings;

  SensorData(this.year, this.readings);
}
