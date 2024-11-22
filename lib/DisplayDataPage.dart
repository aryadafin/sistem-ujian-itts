import 'package:flutter/material.dart';
import 'main.dart'; // Make sure you import the correct file where your MyApp class is defined

class DisplayDataPage extends StatelessWidget {
  final String name;
  final String subject;
  final String testType;

  // Constructor to accept data
  const DisplayDataPage({
    Key? key,
    required this.name,
    required this.subject,
    required this.testType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Summary'),
        backgroundColor: const Color(0xFFFFFFFF), // AppBar color
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
          bottom: 40,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF), // Background color for the page
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image at the top
              Container(
                width: 221,
                height: 221,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/login.png"), // Image path
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              // Space between the image and form
              const SizedBox(height: 20),

              // Display Name
              TextFormField(
                initialValue: name,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                enabled: false, // Make the field non-editable
              ),
              const SizedBox(height: 20),

              // Display Subject
              TextFormField(
                initialValue: subject,
                decoration: const InputDecoration(
                  labelText: 'Subject',
                  border: OutlineInputBorder(),
                ),
                enabled: false, // Make the field non-editable
              ),
              const SizedBox(height: 20),

              // Display Test Type
              TextFormField(
                initialValue: testType,
                decoration: const InputDecoration(
                  labelText: 'Type of Test',
                  border: OutlineInputBorder(),
                ),
                enabled: false, // Make the field non-editable
              ),
              const SizedBox(height: 30),

              // Start Test Button
              ElevatedButton(
                onPressed: () {
                  // When button is pressed, navigate to the home page
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MyApp()), // Replace 'MyHomePage' with your actual main home page
                    (Route<dynamic> route) =>
                        false, // Remove all previous routes
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF10C3C0), // Button color
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  'Start Your Test',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
