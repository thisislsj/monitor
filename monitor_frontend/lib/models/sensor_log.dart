class SensorLog {
  String id;
  String sensorCode;
  DateTime sensorDataOriginTime;
  double sensorValue;
  bool alerted;

  SensorLog(
      {this.id,
      this.sensorCode,
      this.sensorDataOriginTime,
      this.sensorValue,
      this.alerted});

  factory SensorLog.fromJson(Map<String, dynamic> json) {
    return SensorLog(
      id: json['id'] as String,
      sensorCode: json['sensorCode'] as String,
      sensorDataOriginTime: json['name'] as DateTime,
      sensorValue: json['type'] as double,
      alerted: json['treshold'] as bool,
    );
  }
}
