import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class Event with _$Event {

  const factory Event({
    required String name,
    required DateTime date,
    required String locationName,
    required bool isFavorite,
    required Uri imageUrl,
  }) = _Event;
}
