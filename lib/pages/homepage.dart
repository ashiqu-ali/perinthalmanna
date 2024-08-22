import 'package:flutter/material.dart';
import 'package:town_pmna_v1/components/homepage_appbar.dart';
import 'package:town_pmna_v1/components/homepage_body.dart';
import 'package:town_pmna_v1/utils/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Appbar(),
      ),
      body: BodyPart(),
    );
  }
}
