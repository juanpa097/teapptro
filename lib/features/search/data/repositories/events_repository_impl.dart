import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../common/data/firestore_helpers.dart';
import '../../domain/entities/event.dart';
import '../../domain/entities/event_failure.dart';
import '../../domain/repositories/events_repository.dart';
import '../models/event_model.dart';

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
        .map(
          (QuerySnapshot<Map<String, dynamic>> snapshot) =>
              right<EventFailure, List<Event>>(
            snapshot.docs
                .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) =>
                    EventModel.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .onErrorReturnWith(
      (Object e, StackTrace stackTrace) {
        return left(
          EventFailure.unexpected(e is Error ? e : null),
        );
      },
    );
  }
}
