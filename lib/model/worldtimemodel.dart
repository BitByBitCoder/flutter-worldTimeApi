class WorldTimeModel {
  final String abbreviation;
  final String clientIp;
  final String datetime;
  final int dayOfWeek;
  final int dayOfYear;
  final bool dst;
  final dynamic dstFrom;
  final int dstOffset;
  final dynamic dstUntil;
  final int rawOffset;
  final String timezone;
  final int unixtime;
  final String utcDatetime;
  final String utcOffset;
  final int weekNumber;

  WorldTimeModel({
    required this.abbreviation,
    required this.clientIp,
    required this.datetime,
    required this.dayOfWeek,
    required this.dayOfYear,
    required this.dst,
    this.dstFrom,
    required this.dstOffset,
    this.dstUntil,
    required this.rawOffset,
    required this.timezone,
    required this.unixtime,
    required this.utcDatetime,
    required this.utcOffset,
    required this.weekNumber,
  });

  factory WorldTimeModel.fromJson(Map<String, dynamic> json) {
    return WorldTimeModel(
      abbreviation: json['abbreviation'],
      clientIp: json['client_ip'],
      datetime: json['datetime'],
      dayOfWeek: json['day_of_week'],
      dayOfYear: json['day_of_year'],
      dst: json['dst'],
      dstFrom: json['dst_from'],
      dstOffset: json['dst_offset'],
      dstUntil: json['dst_until'],
      rawOffset: json['raw_offset'],
      timezone: json['timezone'],
      unixtime: json['unixtime'],
      utcDatetime: json['utc_datetime'],
      utcOffset: json['utc_offset'],
      weekNumber: json['week_number'],
    );
  }

  WorldTimeModel copyWith({
    String? abbreviation,
    String? clientIp,
    String? datetime,
    int? dayOfWeek,
    int? dayOfYear,
    bool? dst,
    dynamic dstFrom,
    int? dstOffset,
    dynamic dstUntil,
    int? rawOffset,
    String? timezone,
    int? unixtime,
    String? utcDatetime,
    String? utcOffset,
    int? weekNumber,
  }) {
    return WorldTimeModel(
      abbreviation: abbreviation ?? this.abbreviation,
      clientIp: clientIp ?? this.clientIp,
      datetime: datetime ?? this.datetime,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      dayOfYear: dayOfYear ?? this.dayOfYear,
      dst: dst ?? this.dst,
      dstFrom: dstFrom ?? this.dstFrom,
      dstOffset: dstOffset ?? this.dstOffset,
      dstUntil: dstUntil ?? this.dstUntil,
      rawOffset: rawOffset ?? this.rawOffset,
      timezone: timezone ?? this.timezone,
      unixtime: unixtime ?? this.unixtime,
      utcDatetime: utcDatetime ?? this.utcDatetime,
      utcOffset: utcOffset ?? this.utcOffset,
      weekNumber: weekNumber ?? this.weekNumber,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! WorldTimeModel) return false;
    final WorldTimeModel otherModel = other;
    return otherModel.abbreviation == abbreviation &&
        otherModel.clientIp == clientIp &&
        otherModel.datetime == datetime &&
        otherModel.dayOfWeek == dayOfWeek &&
        otherModel.dayOfYear == dayOfYear &&
        otherModel.dst == dst &&
        otherModel.dstFrom == dstFrom &&
        otherModel.dstOffset == dstOffset &&
        otherModel.dstUntil == dstUntil &&
        otherModel.rawOffset == rawOffset &&
        otherModel.timezone == timezone &&
        otherModel.unixtime == unixtime &&
        otherModel.utcDatetime == utcDatetime &&
        otherModel.utcOffset == utcOffset &&
        otherModel.weekNumber == weekNumber;
  }

  @override
  int get hashCode {
    return abbreviation.hashCode ^
        clientIp.hashCode ^
        datetime.hashCode ^
        dayOfWeek.hashCode ^
        dayOfYear.hashCode ^
        dst.hashCode ^
        dstFrom.hashCode ^
        dstOffset.hashCode ^
        dstUntil.hashCode ^
        rawOffset.hashCode ^
        timezone.hashCode ^
        unixtime.hashCode ^
        utcDatetime.hashCode ^
        utcOffset.hashCode ^
        weekNumber.hashCode;
  }
}
