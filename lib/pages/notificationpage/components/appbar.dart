import 'package:flutter/material.dart';
import 'package:town_pmna_v1/utils/color.dart';

class NotificationAppbar extends StatelessWidget {
  const NotificationAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: primaryColor,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_rounded),
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: const Text('Notification',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}
