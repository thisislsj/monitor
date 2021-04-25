import 'package:flutter/material.dart';

class DashboardHome extends StatefulWidget {
  @override
  _DashboardHomeState createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Sensor Monitoring System"),
      // ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 10.0,
          children: List.generate(100, (index) {
            return Center(
              //child: Text("A"),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Text("Sensor Name"),
                      Text("data"),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
