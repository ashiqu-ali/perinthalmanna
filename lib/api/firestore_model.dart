// import 'package:cloud_firestore/cloud_firestore.dart';

// class News {
//   final String topic;
//   final String thumbnail;
//   final String title;
//   final String description;
//   final String place;
//   final DateTime datetime;
//   final bool isHide;
//   final bool isVerifiedByAdmin;
//   final DocumentReference user;

//   News({
//     required this.topic,
//     required this.thumbnail,
//     required this.title,
//     required this.description,
//     required this.place,
//     required this.datetime,
//     required this.isHide,
//     required this.isVerifiedByAdmin,
//     required this.user,
//   });

//   factory News.fromSnapshot(DocumentSnapshot snapshot) {
//     final data = snapshot.data() as Map<String, dynamic>;
//     return News(
//       topic: data['topic'],
//       thumbnail: data['thumbnail'],
//       title: data['title'],
//       description: data['description'],
//       place: data['place'],
//       datetime: (data['datetime'] as Timestamp).toDate(),
//       isHide: data['isHide'],
//       isVerifiedByAdmin: data['isVerified_by_admin'],
//       user: data['user'],
//     );
//   }
// }

// class User {
//   final String phone;
//   final String name;
//   final int age;
//   final DateTime joinedOn;

//   User({
//     required this.phone,
//     required this.name,
//     required this.age,
//     required this.joinedOn,
//   });

//   factory User.fromSnapshot(DocumentSnapshot snapshot) {
//     final data = snapshot.data() as Map<String, dynamic>;
//     return User(
//       phone: data['phone'],
//       name: data['name'],
//       age: data['age'],
//       joinedOn: (data['joinedOn'] as Timestamp).toDate(),
//     );
//   }
// }

// class AppInfo {
//   final String aboutUs;
//   final String title;

//   AppInfo({
//     required this.aboutUs,
//     required this.title,
//   });

//   factory AppInfo.fromSnapshot(DocumentSnapshot snapshot) {
//     final data = snapshot.data() as Map<String, dynamic>;
//     return AppInfo(
//       aboutUs: data['aboutus'],
//       title: data['title'],
//     );
//   }
// }

// class AppNotification {
//   final String title;
//   final String description;
//   final DateTime postOn;

//   AppNotification({
//     required this.title,
//     required this.description,
//     required this.postOn,
//   });

//   factory AppNotification.fromSnapshot(DocumentSnapshot snapshot) {
//     final data = snapshot.data() as Map<String, dynamic>;
//     return AppNotification(
//       title: data['title'],
//       description: data['description'],
//       postOn: (data['poston'] as Timestamp).toDate(),
//     );
//   }
// }

// class EmergencyContact {
//   final String title;
//   final String contactNumber;
//   final String address;

//   EmergencyContact({
//     required this.title,
//     required this.contactNumber,
//     required this.address,
//   });

//   factory EmergencyContact.fromSnapshot(DocumentSnapshot snapshot) {
//     final data = snapshot.data() as Map<String, dynamic>;
//     return EmergencyContact(
//       title: data['title'],
//       contactNumber: data['contact_number'],
//       address: data['address'],
//     );
//   }
// }
