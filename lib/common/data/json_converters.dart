import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

class StringToUriConverter implements JsonConverter<Uri, String> {
  const StringToUriConverter();

  @override
  Uri fromJson(String uri) => Uri.parse(uri);

  @override
  String toJson(Uri uri) => uri.toString();
}
