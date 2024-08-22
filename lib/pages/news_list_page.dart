import 'package:flutter/material.dart';
import 'package:town_pmna_v1/api/demo_data.dart';
import 'package:town_pmna_v1/pages/news_add_page.dart';
import 'package:town_pmna_v1/pages/news_details_page.dart';
import 'package:town_pmna_v1/pages/report_page.dart';
import 'package:town_pmna_v1/utils/color.dart';

class ListNews extends StatelessWidget {
  final String? selectedTopic;

  const ListNews({
    super.key,
    this.selectedTopic,
  });

  @override
  Widget build(BuildContext context) {
    final filteredNews = selectedTopic == 'ALL' || selectedTopic == null
        ? news
        : news
            .where((item) =>
                item['topic'].toString().toUpperCase() == selectedTopic)
            .toList();
    return Expanded(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: filteredNews.length,
            itemBuilder: (context, index) {
              final newsItem = filteredNews[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 3)
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(newsItem['topic'].toString(),
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor)),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const NewsDetailPage(),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Text('Read more',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor)),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: primaryColor,
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NewsDetailPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    newsItem['thumbnail'].toString()),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    newsItem['title'].toString(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const NewsDetailPage(),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '0',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: primaryColor),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.thumb_up_alt_rounded,
                                              color: primaryColor,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '0',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: primaryColor),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.send_rounded,
                                              color: primaryColor,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text(newsItem['description'].toString()),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    newsItem['datetime'].toString(),
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      // Show the ReportPage dialog
                                      final reason = await showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const ReportPage();
                                        },
                                      );

                                      if (reason != null) {
                                        // Handle the selected report reason
                                        print("Reported for: $reason");
                                      }
                                    },
                                    child: const Text('Report',
                                        style: TextStyle(color: Colors.grey)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            },
          ),
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddNewsPage(),
                  ));
            },
            backgroundColor: primaryColor,
            child: const Icon(
              Icons.newspaper,
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
