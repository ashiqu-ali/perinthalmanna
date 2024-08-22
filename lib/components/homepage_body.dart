import 'package:flutter/material.dart';
import 'package:town_pmna_v1/pages/helpline_page.dart';
import 'package:town_pmna_v1/pages/news_list_page.dart';
import 'package:town_pmna_v1/widgets/helpline.dart';
import 'package:town_pmna_v1/widgets/hottopic.dart';
import 'package:town_pmna_v1/widgets/news.dart';

class BodyPart extends StatefulWidget {
  const BodyPart({super.key});

  @override
  _BodyPartState createState() => _BodyPartState();
}

class _BodyPartState extends State<BodyPart> {
  bool _showNews = true;
  String? _selectedTopic;

  void _toggleView(bool showNews) {
    setState(() {
      _showNews = showNews;
    });
  }

  void _filterNewsByTopic(String topic) {
    setState(() {
      _selectedTopic = topic;
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
        if (_showNews) ...[
          HottopicWidget(onTopicSelected: _filterNewsByTopic),
          ListNews(selectedTopic: _selectedTopic),
        ] else ...const [
          HelpLinePage(),
        ],
      ],
    );
  }
}
