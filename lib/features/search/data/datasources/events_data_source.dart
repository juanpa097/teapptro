import 'package:dartz/dartz.dart';
import 'package:teapptro/common/error/Failure.dart';
import 'package:teapptro/features/search/domain/repositories/events_repository.dart';

import '../../domain/entities/event.dart';

abstract class EventsDataSource {
  Future<List<Event>> fetchAllEvents();
}

class FireBaseEventsDataSource extends EventsDataSource {
  @override
  Future<List<Event>> fetchAllEvents() {
    final httpsUri = Uri(
        scheme: 'https',
        host: 'dart.dev',
        path: 'guides/libraries/library-tour',
        fragment: 'numbers');

    return Future.value([
      Event(
          name: "name",
          date: DateTime.now(),
          locationName: "locationName",
          isFavorite: true,
          imageUrl: httpsUri)
    ]);
  }
}
