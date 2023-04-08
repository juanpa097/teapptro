import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

class BoolToIntConverter implements JsonConverter<bool, int> {
  const BoolToIntConverter();

  @override
  bool fromJson(int json) {
    return json == 1 ? true : false;
  }

  @override
  int toJson(bool object) {
    return object ? 1 : 0;
  }
}
