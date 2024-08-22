import 'package:flutter/material.dart';
import 'package:town_pmna_v1/api/demo_data.dart';
import 'package:town_pmna_v1/utils/color.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Report News', style: TextStyle(color: primaryColor)),
      content: SingleChildScrollView(
        child: ListBody(
          children: reportReasons.map((reason) {
            return ListTile(
              title: Text(reason),
              onTap: () {
                // Handle the report reason selection
                Navigator.of(context).pop(reason);
              },
            );
          }).toList(),
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Cancel', style: TextStyle(color: primaryColor)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
