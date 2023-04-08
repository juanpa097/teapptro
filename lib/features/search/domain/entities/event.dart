import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teapptro/common/location.dart';

part 'event.freezed.dart';

@freezed
class Event with _$Event {

  const factory Event({
    required String name,
    required DateTime date,
    required Location location,
    required bool isFavorite,
    required Uri imageUrl,
  }) = _Event;
}
