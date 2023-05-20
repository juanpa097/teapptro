import 'package:dartz/dartz.dart';

import '../entities/event.dart';
import '../entities/event_failure.dart';

abstract class EventsRepository {
  Stream<Either<EventFailure, List<Event>>> watchAll();
  Stream<Either<EventFailure, Event>> watchEvent(String id);
}
