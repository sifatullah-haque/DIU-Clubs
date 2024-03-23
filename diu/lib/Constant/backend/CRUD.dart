import 'package:cloud_firestore/cloud_firestore.dart';

class firestoreService {
  final CollectionReference VolunteerCollection =
      FirebaseFirestore.instance.collection('Volunteer');

  //create: add a new volunteer
  Future<void> addVolunteer(String name, String email, String batch,
      String roll, String reg, String semester, String phone) {
    return VolunteerCollection.add({
      'name': name,
      'email': email,
      'batch': batch,
      'roll': roll,
      'reg': reg,
      'semester': semester,
      'phone': phone,
      'timeStamp': Timestamp.now(),
    });
  }
}
