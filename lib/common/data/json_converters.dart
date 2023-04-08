import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teapptro/common/location.dart';

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

class GeoPointToLocation implements JsonConverter<Location, GeoPoint> {
  const GeoPointToLocation();

  @override
  GeoPoint toJson(Location location) =>
      GeoPoint(location.latitude, location.longitude);

  @override
  Location fromJson(GeoPoint geoPoint) => Location(
        latitude: geoPoint.latitude,
        longitude: geoPoint.longitude,
      );
}
