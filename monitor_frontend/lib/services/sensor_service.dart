import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:monitor_frontend/models/sensor.dart';

class SensorService {
  //static const String url = "http://localhost:8080";
  static const String url = "http://192.168.43.105:8080";

  static Future<List<Sensor>> getAllSensors() async {
    try {
      final response = await http.get(
        Uri.parse("$url/sensors"),
      );
      print(response.body);
      if (response.statusCode == 200) {
        List<Sensor> list = parseSensors(response.body);
        return list;
      } else {
        throw Exception("Error getting all sensors");
      }
    } catch (e) {
      print("error catched");
      throw Exception(e.toString());
    }
  }

  static List<Sensor> parseSensors(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Sensor>((json) => Sensor.fromJson(json)).toList();
  }

  static Future<Sensor> createSensor(String sensorCode) async {
    final response = await http.post(
      Uri.parse("$url/sensors"),
      // headers: <String, String>{
      //   'Content-Type': 'application/json; charset=UTF-8',
      // },
      body: jsonEncode(<String, dynamic>{
        "sensorCode": sensorCode,
        "name": "Bed Room 8 Humedity",
        "type": "Humedity",
        "threshold": 41,
        "notificationSettings": {
          "byEmail": false,
          "byPhoneCall": true,
          "bySMS": false
        }
      }),
    );
    print("creating sensor $response");

    if (response.statusCode == 201) {
      print("201-- $response");
      return Sensor.fromJson(jsonDecode(response.body));
    } else {
      print("exception -- ${response.toString()}");
      throw Exception('Failed to create Sensor.');
    }
  }
}
