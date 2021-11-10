import '../../f_logs.dart';

class Log {
  // Id will be gotten from the database.
  // It's automatically generated & unique for every stored Log.
  int? id;

  String? className;
  String? methodName;
  String? text;
  String? timestamp;
  String? exception;
  String? dataLogType;
  int? timeInMillis;
  LogLevel? logLevel;
  String? stacktrace;
  String? latitude;
  String? longitude;
  String? brand;
  String? model;
  String? os;
  String? version;
  String? buildVersion;

  Log({
    this.className,
    this.methodName,
    this.text,
    this.timestamp,
    this.timeInMillis,
    this.exception,
    this.logLevel,
    this.dataLogType,
    this.stacktrace,
    this.latitude,
    this.longitude,
    this.brand,
    this.model,
    this.os,
    this.version,
    this.buildVersion
  });

  /// Converts class to json
  Map<String, dynamic> toJson() {
    return {
      'className': className,
      'methodName': methodName,
      'text': text,
      'timestamp': timestamp,
      'timeInMillis': timeInMillis,
      'exception': exception,
      'dataLogType': dataLogType,
      'logLevel': LogLevelConverter.fromEnumToString(logLevel),
      'stacktrace': stacktrace,
      'latitude': latitude,
      'longitude': longitude,
      'brand': brand,
      'model': model,
      'os': os,
      'version': version,
      'buildVersion': buildVersion
    };
  }

  /// create `Log` from json
  static Log fromJson(Map<String, dynamic> json) {
    return Log(
      className: json['className'],
      methodName: json['methodName'],
      text: json['text'],
      timestamp: json['timestamp'],
      timeInMillis: json['timeInMillis'],
      exception: json['exception'],
      dataLogType: json['dataLogType'],
      logLevel: LogLevelConverter.fromStringToEnum(json['logLevel']),
      stacktrace: json['stacktrace'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      brand: json['brand'],
      model: json['model'],
      os: json['os'],
      version: json['version'],
      buildVersion: json['buildVersion']
    );
  }
}
