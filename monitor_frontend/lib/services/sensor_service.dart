import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:monitor_frontend/models/sensor.dart';

class SensorService {
  static const String url = "http://localhost:8080";

  static Future<List<Sensor>> getAllSensors() async {
    try {
      final response = await http.get(Uri.parse("$url/sensors"));
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
}
