import 'package:flutter/material.dart';
import 'package:town_pmna_v1/utils/color.dart';

class HelplinePage extends StatelessWidget {
  bool showNews;
  HelplinePage({
    super.key,
    required this.showNews,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: showNews ? Colors.white : primaryColor,
        borderRadius: BorderRadius.circular(1),
        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)],
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.health_and_safety_sharp,
              color: showNews ? primaryColor : Colors.white),
          const SizedBox(width: 10),
          Text(
            'Help Line',
            style: TextStyle(color: showNews ? primaryColor : Colors.white),
          ),
        ],
      ),
    );
  }
}
