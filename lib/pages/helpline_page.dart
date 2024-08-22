import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher
import 'package:town_pmna_v1/api/demo_data.dart';
import 'package:town_pmna_v1/utils/color.dart';

class HelpLinePage extends StatelessWidget {
  const HelpLinePage({super.key});

  // Method to make a phone call
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(emergencyServices.length, (index) {
                  final service = emergencyServices[index];
                  return Card(
                    color: Colors.white,
                    elevation: 5,
                    child: ListTile(
                      trailing: IconButton(
                        icon: Icon(Icons.phone, color: primaryColor),
                        onPressed: () {
                          _makePhoneCall(service['contact']!);
                        },
                      ),
                      title: Text(
                        service['service']!,
                        style: TextStyle(color: primaryColor),
                      ),
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
          ),
          // Positioned(
          //   bottom: 16,
          //   right: 16,
          //   child: FloatingActionButton(
          //     onPressed: () {},
          //     backgroundColor: primaryColor,
          //     child: const Icon(
          //       Icons.add_ic_call_rounded,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
