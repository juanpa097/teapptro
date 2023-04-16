import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../common/data/firestore_helpers.dart';
import '../../domain/entities/event.dart';
import '../../domain/entities/event_failure.dart';
import '../../domain/repositories/events_repository.dart';
import '../mappers/event_mapper.dart';

@LazySingleton(as: EventsRepository)
class EventsRepositoryImpl extends EventsRepository {
  EventsRepositoryImpl(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Stream<Either<EventFailure, List<Event>>> watchAll() async* {
    final CollectionReference<Map<String, dynamic>> eventsDoc =
        _firestore.eventsCollection;
    yield* eventsDoc
        .snapshots()
        .map(mapListEvent)
        .onErrorReturnWith(mapEventFailure);
  }

  @override
  Stream<Either<EventFailure, bool>> addAsFavorite(String eventId) {
    throw UnimplementedError();
  }
}
