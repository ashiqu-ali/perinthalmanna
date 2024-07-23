import 'package:flutter/material.dart';
import 'package:town_pmna_v1/pages/helplinepage/helpline_page.dart';
import 'package:town_pmna_v1/pages/homepage/widgets/helpline.dart';
import 'package:town_pmna_v1/pages/homepage/widgets/hottopic.dart';
import 'package:town_pmna_v1/pages/homepage/widgets/news.dart';
import 'package:town_pmna_v1/pages/news/news_list_page.dart';

class BodyPart extends StatefulWidget {
  const BodyPart({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BodyPartState createState() => _BodyPartState();
}

class _BodyPartState extends State<BodyPart> {
  bool _showNews = true;

  void _toggleView(bool showNews) {
    setState(() {
      _showNews = showNews;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => _toggleView(true),
                child: NewsPage(showNews: _showNews),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => _toggleView(false),
                child: HelplinePage(showNews: _showNews),
              ),
            ),
          ],
        ),
        if (_showNews) ...const [
          HottopicWidget(),
          ListNews(),
        ] else ...const [
          HelpLinePage(),
        ],
      ],
    );
  }
}
