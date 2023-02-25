import 'package:dartz/dartz.dart';
import 'package:teapptro/features/search/domain/entities/event.dart';
import 'package:teapptro/features/search/domain/entities/event_failure.dart';

abstract class EventsRepository {
  Stream<Either<EventFailure, List<Event>>> watchAll();
}
