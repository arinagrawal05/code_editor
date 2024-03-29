import 'package:code_editor/components.dart';
import 'package:code_editor/main.dart';
import 'package:flutter/material.dart';

class SuccessfullySubmittedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myIndigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.check_circle_outline,
              color: Colors.white,
              size: 100.0,
            ),
            const SizedBox(height: 20.0),
            heading('Submission Successful!', 28, color: Colors.white),
            const SizedBox(height: 10.0),
            heading('Thank you for your submission.', 20, color: Colors.white),
            const SizedBox(height: 20.0),
            // ElevatedButton(
            //   onPressed: () {
            //     // Add functionality to navigate back to previous screen or home screen
            //   },
            //   child: const Text('Back to Home'),
            // ),
          ],
        ),
      ),
    );
  }
}
