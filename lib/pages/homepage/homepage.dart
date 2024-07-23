import 'package:flutter/material.dart';
import 'package:town_pmna_v1/pages/homepage/components/appbar.dart';
import 'package:town_pmna_v1/pages/homepage/components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Appbar(),
      ),
      body: SingleChildScrollView(child: BodyPart()),
    );
  }
}
