import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teapptro/features/search/domain/entities/event.dart';

part 'event_model.freezed.dart';

part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const EventModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EventModel({
    @JsonKey(ignore: true) String? id,
    required String name,
    required String date,
    required String locationName,
    required String isFavorite,
    required String imageUrl,
  }) = _EventModel;

  Event toDomain() => Event(
        name: name,
        date: DateTime.now(),
        locationName: locationName,
        isFavorite: true,
        imageUrl: Uri.dataFromString(imageUrl),
      );

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  factory EventModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      EventModel.fromJson(doc.data() ?? {}).copyWith(id: doc.id);
}
