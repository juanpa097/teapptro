import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:teapptro/common/error/Failure.dart';
import 'package:teapptro/common/data/firestore_helpers.dart';
import 'package:teapptro/features/search/domain/repositories/events_repository.dart';

import '../../domain/entities/event.dart';

abstract class EventsDataSource {
  Stream<Iterable<Event>> watchAllEvents();
}

class FireBaseEventsDataSource extends EventsDataSource {
  // Change to DI
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Stream<Iterable<Event>> watchAllEvents() async* {
    final httpsUri = Uri(
        scheme: 'https',
        host: 'dart.dev',
        path: 'guides/libraries/library-tour',
        fragment: 'numbers');
    final events = _firestore.collection("events").snapshots().map(
          (snapshots) => snapshots.docs.map(
            (doc) => Event(
              name: doc['name'],
              date: DateTime.now(),
              locationName: 'locationName',
              isFavorite: false,
              imageUrl: httpsUri,
            ),
          ),
        );

    yield* events;
  }
}
