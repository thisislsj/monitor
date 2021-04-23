import 'package:flutter/material.dart';

class DashboardHome extends StatefulWidget {
  @override
  _DashboardHomeState createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sensor Monitoring System"),
      ),
      body: Container(
        child: Text("Dashboard"),
      ),
    );
  }
}
