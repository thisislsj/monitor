import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:monitor_frontend/models/sensor_log.dart';

class SensorLogService {
  //static const String url = "http://localhost:8080";
  static const String url = "http://192.168.43.105:8080";

  static Future<List<SensorLog>> getAllSensorLogs() async {
    try {
      final response = await http.get(Uri.parse("$url/sensorlogs"));
      print(response.body);
      if (response.statusCode == 200) {
        List<SensorLog> list = parseSensors(response.body);
        return list;
      } else {
        throw Exception("Error getting all sensors");
      }
    } catch (e) {
      print("error catched");
      throw Exception(e.toString());
    }
  }

  static Future<List<SensorLog>> getSingleSensorLog(String sensorCode) async {
    try {
      final response = await http.get(Uri.parse("$url/sensorlogs/$sensorCode"));
      print(response.body);
      if (response.statusCode == 200) {
        List<SensorLog> list = parseSensors(response.body);
        return list;
      } else {
        throw Exception("Error getting all sensors");
      }
    } catch (e) {
      print("error catched");
      throw Exception(e.toString());
    }
  }

  static List<SensorLog> parseSensors(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<SensorLog>((json) => SensorLog.fromJson(json)).toList();
  }
}
