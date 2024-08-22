// lib/pages/terms_and_conditions_page.dart

import 'package:flutter/material.dart';
import 'package:town_pmna_v1/utils/color.dart'; // Import your color definitions

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
        backgroundColor: primaryColor, // Use your primary color here
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            '''
            Terms and Conditions

            Welcome to our application. These terms and conditions outline the rules and regulations for the use of our application.

            By accessing or using our application, you agree to comply with these terms and conditions. If you do not agree with any part of these terms, you must not use our application.

            1. **User Account**
            - You must create an account to use certain features of our application.
            - You are responsible for maintaining the confidentiality of your account credentials.

            2. **Use of the Application**
            - You agree to use the application only for lawful purposes.
            - You must not use the application in any way that may cause damage to the application or impair its availability or accessibility.

            3. **Content**
            - All content provided on the application is for informational purposes only.
            - We do not guarantee the accuracy or completeness of the content.

            4. **Limitation of Liability**
            - We will not be liable for any loss or damage arising from your use of the application.

            5. **Changes to Terms**
            - We reserve the right to modify these terms and conditions at any time.
            - Your continued use of the application after changes indicates your acceptance of the new terms.

            6. **Contact Us**
            - If you have any questions about these terms and conditions, please contact us.

            Thank you for using our application!
            ''',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
