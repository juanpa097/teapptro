// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      id: json['id'] as String,
      name: json['name'] as String,
      date: const TimestampConverter().fromJson(json['date'] as Timestamp),
      imageUrl:
          const StringToUriConverter().fromJson(json['image_url'] as String),
      description: json['description'] as String,
      locationName: json['location_name'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': const TimestampConverter().toJson(instance.date),
      'image_url': const StringToUriConverter().toJson(instance.imageUrl),
      'description': instance.description,
      'location_name': instance.locationName,
      'address': instance.address,
    };
