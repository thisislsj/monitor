class SensorLog {
  String id;
  String sensorCode;
  String sensorDataOriginTime;
  int sensorValue;
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
      sensorDataOriginTime: json['date'] as String,
      sensorValue: json['dataValue'] as int,
      alerted: json['alerted'] as bool,
    );
  }
}
