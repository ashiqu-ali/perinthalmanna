import 'package:flutter/material.dart';
import 'package:town_pmna_v1/utils/color.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Made with ❤️ by Coword Technologies',
        style: TextStyle(color: primaryColor, fontSize: 12));
  }
}
