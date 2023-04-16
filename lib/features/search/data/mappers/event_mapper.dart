import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/event.dart';
import '../../domain/entities/event_failure.dart';
import '../models/event_model.dart';

Either<EventFailure, List<Event>> mapListEvent(
  QuerySnapshot<Map<String, dynamic>> snapshot,
) =>
    right<EventFailure, List<Event>>(
      snapshot.docs.map(mapEvent).toList(),
    );

Event mapEvent(
  QueryDocumentSnapshot<Map<String, dynamic>> doc,
) =>
    EventModel.fromFirestore(doc).toDomain();

Either<EventFailure, List<Event>> mapEventFailure(
  Object e,
  StackTrace stackTrace,
) =>
    left(EventFailure.unexpected(e is Error ? e : null));
