import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/entities/event.dart';
import '../../domain/entities/event_failure.dart';
import '../models/event_model.dart';

List<Event> mapListEvent(
  QuerySnapshot<Map<String, dynamic>> snapshot,
) =>
    snapshot.docs.map(mapEvent).toList();


Event mapEvent(
    DocumentSnapshot<Map<String, dynamic>> doc,
) {
  debugPrint(doc.data().toString());
  return EventModel.fromFirestore(doc).toDomain();
}

Either<EventFailure, T> mapEventFailure<T>(
  Object e,
  StackTrace stackTrace,
) =>
    left(EventFailure.unexpected(e is Error ? e : null));
