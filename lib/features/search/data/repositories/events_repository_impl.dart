import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:teapptro/common/data/firestore_helpers.dart';
import 'package:teapptro/features/search/data/models/event_model.dart';
import 'package:teapptro/features/search/domain/entities/event.dart';
import 'package:teapptro/features/search/domain/entities/event_failure.dart';
import 'package:teapptro/features/search/domain/repositories/events_repository.dart';

@LazySingleton(as: EventsRepository)
class EventsRepositoryImpl extends EventsRepository {
  final FirebaseFirestore _firestore;

  EventsRepositoryImpl(this._firestore);

  @override
  Stream<Either<EventFailure, List<Event>>> watchAll() async* {
    final eventsDoc = _firestore.eventsCollection;
    yield* eventsDoc
        .snapshots()
        .map(
          (snapshot) => right<EventFailure, List<Event>>(
            snapshot.docs
                .map((doc) => EventModel.fromFirestore(
                        doc as DocumentSnapshot<Map<String, dynamic>>)
                    .toDomain())
                .toList(),
          ),
        )
        // Error to when the mapping failed.
        .onErrorReturnWith(
      (e, stackTrace) {
        debugPrint(e is Error ? e.toString() : ">>>>>>>>>>>>>>>>>>>>>>>");
        debugPrintStack(stackTrace: stackTrace);
        return left(
          EventFailure.unexpected(e is Error ? e : null),
        );
      },
    );
  }
}
