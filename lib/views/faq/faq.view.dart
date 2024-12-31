import 'package:flutter/material.dart';

class FAQViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ & Terms and Conditions'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FAQ Section
            const Text(
              'FAQ for ParkMe Mobile App',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            faqItem(
              question: 'How do I create an account on the ParkMe app?',
              answer:
                  'To create an account, download the app and select "Sign Up." You’ll need to provide some basic information including your name, email address, and a password to register as a regular user.',
            ),
            faqItem(
              question: 'How can I book a parking space?',
              answer:
                  'Open the ParkMe app and log in. Use the search function to find available parking areas based on your destination. Select an available spot and click "Book." Complete the payment process to confirm your booking.',
            ),
            faqItem(
              question: 'What payment methods are available on the app?',
              answer:
                  'The ParkMe app supports various online payment options, ensuring a secure and seamless transaction experience during the booking process.',
            ),
            faqItem(
              question: 'How does the QR code feature work in the app?',
              answer:
                  'Different QR codes are allocated to different parking spaces. After booking a particular parking spot, simply scan the QR code at the location to check in. The app will automatically track your time and direct you to payment upon checkout.',
            ),
            faqItem(
              question: 'Can I cancel my booking through the app?',
              answer:
                  'Yes, you can cancel your booking directly in the ParkMe app. Navigate to your bookings, select the one you want to cancel, and follow the prompts to complete the cancellation process.',
            ),
            faqItem(
              question: 'How does the loyalty program work in the app?',
              answer:
                  'ParkMe rewards users with star points for every booking made. These points accumulate and can be redeemed for rewards once specific thresholds are reached.',
            ),
            faqItem(
              question: 'What is surging pricing and how does it affect me?',
              answer:
                  'Surging pricing is implemented during peak hours to manage parking demand. Increased rates are displayed in the app when booking during peak times (weekdays from 5 PM to 8 PM and weekends from 12 PM to 10 PM).',
            ),
            faqItem(
              question:
                  'How can I provide feedback about my experience using the app?',
              answer:
                  'You can share your feedback through the feedback portal available in the app. Your input is valuable for improving our services.',
            ),
            faqItem(
              question:
                  'How can land/property owners register their parking spaces in the app?',
              answer:
                  'Land/property owners can register by creating a regular user account, then navigating to the profile section and selecting the option to sign up as a land/property owner. They must provide details about their parking space and agree to the terms and conditions.',
            ),
            faqItem(
              question: 'What should I do if I forget my password?',
              answer:
                  'If you forget your password, go to the login page and click on "Forgot Password?" Follow the instructions sent to your registered email to reset your password.',
            ),
            SizedBox(height: 30.0),
            // Terms and Conditions Section
            Text(
              'Terms and Conditions for Property Owners of ParkMe App',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'As a property owner using our platform, you agree to follow these rules to keep everything running smoothly. These terms explain what you\'re responsible for, including managing your parking space, following the app\'s rules, and keeping up with payments.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            termsItem(
              'The property owner is responsible for managing, cleaning, and ensuring the safety of their parking area.',
            ),
            termsItem(
              'The property owner can designate extra parking spots for either exclusive or general use.',
            ),
            termsItem(
              'If any terms are broken, penalty points will be added.',
            ),
            termsItem(
              'The property owner agrees to pay a common percentage (20%) of parking fees to the app owner on time.',
            ),
            termsItem(
              'If the property owner gets more than three valid customer negative complaints, penalty points will be given manually by the admin.',
            ),
            termsItem(
              'Payments to the app owner must be made on time to avoid service interruptions.',
            ),
            termsItem(
              'The property owner must follow all rules and security measures provided by the app.',
            ),
            termsItem(
              'The property owner is responsible for repairs, signage, and upkeep of the parking space.',
            ),
            termsItem(
              'The property owner must update the app in real time about available parking spots to avoid overbooking.',
            ),
            termsItem(
              'The property owner must keep customer data private and follow all data protection laws.',
            ),
          ],
        ),
      ),
    );
  }

  Widget faqItem({required String question, required String answer}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        Text(
          answer,
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }

  Widget termsItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        "• " + text,
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}
