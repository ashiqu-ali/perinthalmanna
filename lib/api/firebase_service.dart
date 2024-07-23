import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<AppNotification>> fetchNotifications() async {
    final QuerySnapshot snapshot = await _db.collection('notification').get();
    final notifications =
        snapshot.docs.map((doc) => AppNotification.fromSnapshot(doc)).toList();

    return notifications;
  }

  Future<List<User>> fetchUser() async {
    final QuerySnapshot snapshot = await _db.collection('user').get();
    final user = snapshot.docs.map((doc) => User.fromSnapshot(doc)).toList();
    log(user.length.toString());
    return user;
  }

  Future<List<HelpLine>> fetchHelpLine() async {
    final QuerySnapshot snapshot = await _db.collection('user').get();
    final helpline =
        snapshot.docs.map((doc) => HelpLine.fromSnapshot(doc)).toList();
    return helpline;
  }
}

class AppNotification {
  final String title;
  final String description;
  final DateTime postOn;

  AppNotification({
    required this.title,
    required this.description,
    required this.postOn,
  });

  factory AppNotification.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return AppNotification(
      title: data['title'],
      description: data['description'],
      postOn: (data['poston'] as Timestamp).toDate(),
    );
  }

  @override
  String toString() {
    return 'AppNotification{title: $title, description: $description, postOn: $postOn}';
  }
}

class User {
  final String phone;
  final String name;
  final int age;
  final DateTime joinedOn;

  User({
    required this.phone,
    required this.name,
    required this.age,
    required this.joinedOn,
  });

  factory User.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return User(
      phone: data['phone'].toString(),
      name: data['name'],
      age: data['age'],
      joinedOn: (data['joinedon'] as Timestamp).toDate(),
    );
  }
}

class HelpLine {
  final String title;
  final String contactNumber;
  final String address;

  HelpLine({
    required this.title,
    required this.contactNumber,
    required this.address,
  });

  factory HelpLine.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return HelpLine(
      title: data['title'],
      contactNumber: data['contact_number'],
      address: data['address'],
    );
  }
}
