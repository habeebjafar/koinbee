class Datum {
  Datum({this.timestamp, this.close});

  final DateTime timestamp;
  final double close;

  Datum.fromJson(Map<String, dynamic> json)
      : timestamp = DateTime.parse(json['timestamp']),
        close = json['close'].toDouble();
}
