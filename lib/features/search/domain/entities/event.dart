import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../common/location.dart';

part 'event.freezed.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required String id,
    required String name,
    required DateTime date,
    required Location location,
    required Uri imageUrl,
    required String description,
  }) = _Event;
}
