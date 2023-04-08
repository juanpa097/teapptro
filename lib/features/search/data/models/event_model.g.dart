// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      name: json['name'] as String,
      date: const TimestampConverter().fromJson(json['date'] as Timestamp),
      locationName: json['location_name'] as String,
      isFavorite: json['is_favorite'] as bool,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': const TimestampConverter().toJson(instance.date),
      'location_name': instance.locationName,
      'is_favorite': instance.isFavorite,
      'image_url': instance.imageUrl,
    };
