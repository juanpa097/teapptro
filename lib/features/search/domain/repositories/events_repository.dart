import 'package:dartz/dartz.dart';

import '../entities/event.dart';
import '../entities/event_failure.dart';

abstract class EventsRepository {
  Stream<Either<EventFailure, List<Event>>> watchAll();

  Future<Either<EventFailure, bool>> updateIsFavorite(
    String eventId,
    bool isFavorite,
  );
}
