import 'package:flutter/material.dart';
import 'package:town_pmna_v1/components/notification_appbar.dart';
import 'package:town_pmna_v1/components/notification_body.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: NotificationAppbar(),
      ),
      body: NotificationPageBody(),
    );
  }
}
