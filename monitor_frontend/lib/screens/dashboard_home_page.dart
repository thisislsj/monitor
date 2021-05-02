import 'package:flutter/material.dart';
import 'package:monitor_frontend/custom_widgets/sensor_grid_card.dart';
import 'package:monitor_frontend/models/sensor.dart';
import 'package:monitor_frontend/services/sensor_service.dart';

class DashBoardHome extends StatefulWidget {
  @override
  _DashBoardHomeState createState() => _DashBoardHomeState();
}

class _DashBoardHomeState extends State<DashBoardHome> {
  gridview(AsyncSnapshot<List<Sensor>> snapshot) {
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: GridView.extent(
        maxCrossAxisExtent: 20,
        //crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: snapshot.data.map(
          (sensor) {
            return GestureDetector(
              child: GridTile(
                child: SensorCard(sensor: sensor),
              ),
              onTap: sensorCardClick(sensor),
            );
          },
        ).toList(),
      ),
    );
  }

  sensorCardClick(Sensor sensor) {
    print("Tapped ${sensor.sensorName}");
  }

  circularProgress() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Monitor Sensor Aleart System",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
            // height: 500,
            child: FutureBuilder<List<Sensor>>(
                future: SensorService.getAllSensors(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error ${snapshot.error}');
                  }
                  if (snapshot.hasData) {
                    //gridview
                    //return gridview(snapshot);
                    return GridView.count(
                      crossAxisCount: 4,
                      //maxCrossAxisExtent: 170.0,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,

                      // crossAxisCount: 4,
                      // mainAxisSpacing: 4,
                      // crossAxisSpacing: 4,
                      children: snapshot.data.map(
                        (sensor) {
                          return SensorCard(sensor: sensor);
                          // return GestureDetector(
                          //   child: GridTile(
                          //     child: SensorCard(sensor: sensor),
                          //   ),
                          //   onTap: sensorCardClick(sensor),
                          // );
                        },
                      ).toList(),
                    );
                  }
                  return circularProgress();
                }),
          ),
          SizedBox(
            height: 60,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                print("New Sensor Created");
                setState(() {
                  SensorService.createSensor("TMP-012");
                });
              },
              child: Text(
                'Add New Sensor',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

// class DashboardHome extends StatelessWidget {
//   final List<String> elements = [
//     "Zero",
//     "One",
//     "Two",
//     "Three",
//     "Four",
//     "Five",
//     "Six",
//     "Seven",
//     "Eight",
//     "Nine",
//     "Ten"
//   ];

//   @override
//   Widget build(context) => Scaffold(
//       body: GridView.extent(
//           maxCrossAxisExtent: 130.0,
//           crossAxisSpacing: 20.0,
//           mainAxisSpacing: 20.0,
//           children: elements
//               .map((el) => Card(
//                   child: Center(
//                       child: Padding(
//                           padding: EdgeInsets.all(8.0), child: Text(el)))))
//               .toList()));
// }

// class DashboardHome extends StatefulWidget {
//   @override
//   _DashboardHomeState createState() => _DashboardHomeState();
// }

// class _DashboardHomeState extends State<DashboardHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text("Sensor Monitoring System"),
//       // ),
//       body: Container(
//         child: GridView.count(
//           crossAxisCount: 4,
//           mainAxisSpacing: 15.0,
//           crossAxisSpacing: 10.0,
//           children: List.generate(100, (index) {
//             return Center(
//               //child: Text("A"),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Container(
//                   height: 100,
//                   width: 200,
//                   color: Colors.orange,
//                   child: Column(
//                     children: [
//                       Text("Sensor Name"),
//                       Text("data"),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }
