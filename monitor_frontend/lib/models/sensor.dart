class Sensor {
  String id;
  String sensorCode;
  String sensorName;
  String sensorType;
  int sensorThresholdValue;

  Sensor(
      {this.id,
      this.sensorCode,
      this.sensorName,
      this.sensorType,
      this.sensorThresholdValue});

  factory Sensor.fromJson(Map<String, dynamic> json) {
    return Sensor(
      id: json['id'] as String,
      sensorCode: json['sensorCode'] as String,
      sensorName: json['name'] as String,
      sensorType: json['type'] as String,
      sensorThresholdValue: json['treshold'] as int,
    );
  }
}
