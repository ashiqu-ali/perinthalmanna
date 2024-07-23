import 'package:flutter/material.dart';
import 'package:town_pmna_v1/utils/color.dart';

class HelpLinePage extends StatelessWidget {
  const HelpLinePage({super.key});

  final List<Map<String, String>> emergencyServices = const [
    {
      "service": "Police Station",
      "contact": "100",
      "address": "Near Main Road, Perinthalmanna, Kerala"
    },
    {
      "service": "Fire Station",
      "contact": "101",
      "address": "Fire Station Road, Perinthalmanna, Kerala"
    },
    {
      "service": "Ambulance",
      "contact": "108",
      "address": "Perinthalmanna, Kerala"
    },
    {
      "service": "Hospital",
      "contact": "04933-227000",
      "address": "District Hospital, Perinthalmanna, Kerala"
    },
    {
      "service": "Electricity Emergency",
      "contact": "1912",
      "address": "KSEB Office, Perinthalmanna, Kerala"
    },
    {
      "service": "Water Supply Emergency",
      "contact": "1800-425-1515",
      "address": "Water Authority Office, Perinthalmanna, Kerala"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: List.generate(emergencyServices.length, (index) {
            final service = emergencyServices[index];
            return Card(
              color: Colors.white,
              elevation: 5,
              child: ListTile(
                trailing: Icon(Icons.phone, color: primaryColor),
                title: Text(service['service']!,
                    style: TextStyle(color: primaryColor)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Contact: ${service['contact']}'),
                    Text('Address: ${service['address']}'),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
