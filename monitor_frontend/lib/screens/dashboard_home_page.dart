import 'package:flutter/material.dart';

class DashboardHome extends StatelessWidget {
  final List<String> elements = [
    "Zero",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten"
  ];

  @override
  Widget build(context) => Scaffold(
      body: GridView.extent(
          maxCrossAxisExtent: 130.0,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          children: elements
              .map((el) => Card(
                  child: Center(
                      child: Padding(
                          padding: EdgeInsets.all(8.0), child: Text(el)))))
              .toList()));
}

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
