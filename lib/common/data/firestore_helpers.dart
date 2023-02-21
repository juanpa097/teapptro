import 'package:cloud_firestore/cloud_firestore.dart';

extension DocumentReferenceX on FirebaseFirestore {
  CollectionReference get eventsCollection =>
      FirebaseFirestore.instance.collection('events');
}
