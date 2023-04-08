import 'package:cloud_firestore/cloud_firestore.dart';

extension DocumentReferenceX on FirebaseFirestore {
  CollectionReference<Map<String, dynamic>> get eventsCollection =>
      FirebaseFirestore.instance.collection('events');
}
