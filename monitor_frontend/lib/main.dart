import 'package:flutter/material.dart';
import 'package:monitor_frontend/screens/dashboard_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monitor Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashBoardHome(),
    );
  }
}
