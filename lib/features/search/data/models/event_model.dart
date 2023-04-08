import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teapptro/common/data/json_converters.dart';
import 'package:teapptro/common/location.dart';
import 'package:teapptro/features/search/domain/entities/event.dart';

part 'event_model.freezed.dart';

part 'event_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@freezed
class EventModel with _$EventModel {
  const EventModel._();

  const factory EventModel({
    @JsonKey(ignore: true) String? id,
    required String name,
    @TimestampConverter() required DateTime date,
    @GeoPointToLocation() required Location location,
    required bool isFavorite,
    @StringToUriConverter() required Uri imageUrl,
  }) = _EventModel;

  Event toDomain() => Event(
        name: name,
        date: date,
        location: location,
        isFavorite: isFavorite,
        imageUrl: imageUrl,
      );

  factory EventModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      _$EventModelFromJson(doc.data() ?? {}).copyWith(id: doc.id);
}
