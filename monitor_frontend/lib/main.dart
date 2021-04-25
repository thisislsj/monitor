import 'package:flutter/material.dart';
import 'package:monitor_frontend/screens/dashboard_home_page.dart';
import 'package:monitor_frontend/screens/single_sensor_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Monitor Dashboard',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: MyHomePage(title: 'Flutter Demo Home Page'),
        home: DashboardHome());
  }
}
