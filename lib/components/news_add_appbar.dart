import 'package:flutter/material.dart';
import 'package:town_pmna_v1/utils/color.dart';

class AddNewsAppbar extends StatelessWidget {
  const AddNewsAppbar({super.key});

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
      title: const Text('Add News',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}
