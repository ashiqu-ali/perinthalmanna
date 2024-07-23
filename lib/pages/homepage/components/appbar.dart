import 'package:flutter/material.dart';
import 'package:town_pmna_v1/pages/feedbackpage/feedback_page.dart';
import 'package:town_pmna_v1/pages/notificationpage/notificationpage.dart';
import 'package:town_pmna_v1/pages/profilepage/profile_page.dart';
import 'package:town_pmna_v1/utils/color.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: primaryColor,
      title: const Text('Town Pmna',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      leading: IconButton(
        icon: const Icon(Icons.account_circle_outlined, color: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const ProfilePage();
              },
            ),
          );
        },
      ),
      actions: [
        IconButton(
          icon:
              const Icon(Icons.notifications_none_rounded, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const NotificationPage();
                },
              ),
            );
          },
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const FeedbackPage();
                },
              ),
            );
          },
          icon: const Icon(Icons.help_outline_rounded, color: Colors.white),
        ),
      ],
    );
  }
}
