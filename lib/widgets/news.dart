import 'package:flutter/material.dart';
import 'package:town_pmna_v1/utils/color.dart';

class NewsPage extends StatelessWidget {
  bool showNews;
  NewsPage({
    super.key,
    required this.showNews,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: showNews ? primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(1),
        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)],
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.newspaper_outlined,
              color: showNews ? Colors.white : primaryColor),
          const SizedBox(width: 10),
          Text(
            'News',
            style: TextStyle(color: showNews ? Colors.white : primaryColor),
          ),
        ],
      ),
    );
  }
}
