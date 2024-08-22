import 'package:flutter/material.dart';
import 'package:town_pmna_v1/api/demo_data.dart';
import 'package:town_pmna_v1/utils/color.dart';

class HottopicWidget extends StatefulWidget {
  final Function(String) onTopicSelected;

  const HottopicWidget({
    super.key,
    required this.onTopicSelected,
  });

  @override
  State<HottopicWidget> createState() => _HottopicWidgetState();
}

class _HottopicWidgetState extends State<HottopicWidget> {
  int _selectedIndex = 0; // -1 means no topic is selected

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Hot Topics',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(hotTopics.length, (index) {
              final topicItem = hotTopics[index];
              final topic = topicItem['topic'].toString().toUpperCase();

              bool isSelected = _selectedIndex == index;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index; // Update the selected index
                  });
                  widget.onTopicSelected(topic);
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected ? primaryColor : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 5),
                      ],
                    ),
                    width: 100,
                    height: 30,
                    child: Center(
                      child: Text(
                        topic,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
