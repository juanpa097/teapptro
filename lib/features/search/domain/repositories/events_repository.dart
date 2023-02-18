import 'package:dartz/dartz.dart';
import 'package:teapptro/features/search/domain/entities/event.dart';

import '../../../../common/error/Failure.dart';

abstract class EventsRepository {
  Future<Either<Failure, List<Event>>> getEvents();
}
