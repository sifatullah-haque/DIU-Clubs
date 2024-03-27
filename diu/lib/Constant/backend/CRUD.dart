import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference volunteerCollection =
      FirebaseFirestore.instance.collection('Volunteer');
  final CollectionReference ideaCollection =
      FirebaseFirestore.instance.collection("Ideas");

  final CollectionReference supportCollection =
      FirebaseFirestore.instance.collection("Supports");

  final CollectionReference joinClubCollection =
      FirebaseFirestore.instance.collection("JoinClub");

  final CollectionReference itemSelectedCollection =
      FirebaseFirestore.instance.collection("ItemSelected");

  //create: add a new volunteer
  Future<void> addVolunteer(
    String name,
    String email,
    String batch,
    String roll,
    String reg,
    String semester,
    String phone,
  ) {
    return volunteerCollection.add({
      'name': name,
      'email': email,
      'batch': batch,
      'roll': roll,
      'reg': reg,
      'semester': semester,
      'phone': phone,
    });
  }

  //create: add a new idea

  Future<void> addIdea(
    String name,
    String batch,
    String roll,
    String idea,
    String mobile,
  ) {
    return ideaCollection.add({
      'name': name,
      'mobile': mobile,
      'batch': batch,
      'roll': roll,
      'idea': idea,
    });
  }

  Future<void> addSupport(
    String name,
    String phone,
    String batch,
    String roll,
    String message,
  ) {
    return supportCollection.add({
      'name': name,
      'mobile': phone,
      'batch': batch,
      'roll': roll,
      'message': message,
    });
  }

  Future<void> addJoinClub(
    String name,
    String email,
    String phone,
    String batch,
    String roll,
    String reg,
    String semester,
    String shift,
    String paymentType,
    String transactionId,
    String fbProfileLink,
    String interestedIn,
    String expertIn,
    String clubName,
  ) {
    return joinClubCollection.add({
      'clubName': clubName,
      'name': name,
      'email': email,
      'phone': phone,
      'batch': batch,
      'roll': roll,
      'reg': reg,
      'semester': semester,
      'shift': shift,
      'paymentType': paymentType,
      'transactionId': transactionId,
      'fbProfileLink': fbProfileLink,
      'interestedIn': interestedIn,
      'expertIn': expertIn,
    });
  }

  Future<void> itemSelected(
    String item,
  ) {
    return itemSelectedCollection.add({
      'item': item,
    });
  }
}
