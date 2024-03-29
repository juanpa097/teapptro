// ignore_for_file: annotate_overrides, invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../common/data/firestore_helpers.dart';
import '../../../../common/data/json_converters.dart';
import '../../domain/entities/event.dart';

part 'event_model.freezed.dart';

part 'event_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required String id,
    required String name,
    @TimestampConverter() required DateTime date,
    @StringToUriConverter() required Uri imageUrl,
    required String description,
    required String locationName,
    required String address,
  }) = _EventModel;

  factory EventModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      _$EventModelFromJson(doc.dataWithId ?? {});

  const EventModel._();

  Event toDomain() => Event(
        id: id,
        name: name,
        date: date,
        imageUrl: imageUrl,
        description: description,
        locationName: locationName,
        address: address,
      );
}
