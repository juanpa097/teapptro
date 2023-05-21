import 'package:cloud_firestore/cloud_firestore.dart';

extension DocumentReferenceX on FirebaseFirestore {
  CollectionReference<Map<String, dynamic>> get eventsCollection =>
      FirebaseFirestore.instance.collection('events');

  Query<Map<String, dynamic>> getEventsByName(String nameQuery) =>
      FirebaseFirestore.instance
          .collection('events')
          .where('name', isGreaterThanOrEqualTo: nameQuery)
          .where('name', isLessThanOrEqualTo: '$nameQuery\uf7ff');

  DocumentReference<Map<String, dynamic>> getEventById(String id) =>
      eventsCollection.doc(id);
}

extension DocumentSnapshotX on DocumentSnapshot<Map<String, dynamic>> {
  Map<String, dynamic>? get dataWithId {
    final json = data();
    json?.addEntries([MapEntry('id', id)]);
    return json;
  }
}
