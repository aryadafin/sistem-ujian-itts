import 'package:flutter/material.dart';

import 'DisplayDataPage.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({super.key});

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  // Mendeklarasikan _formKey untuk form validation
  final _formKey = GlobalKey<FormState>(); // <-- Deklarasi formKey
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _testTypeController = TextEditingController();

  bool _isTestReady = false;

  // Variabel untuk dropdown
  String? _selectedTestType = 'UTS';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Page"),
        backgroundColor: const Color(0xFFFFFFFF), // Warna AppBar
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
          color: Color(0xFFFFFFFF), // Warna latar belakang sama dengan AppBar
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Gambar di atas
              Container(
                width: 221,
                height: 221,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/sign.png"), // Gambar
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              // Jarak antara gambar dan form
              const SizedBox(height: 20),

              // Form di bawah gambar
              Container(
                width: 393,
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: _formKey, // Gunakan _formKey yang sudah dideklarasikan
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Judul Input Data
                      Text(
                        'Input your Data',
                        style: TextStyle(
                          color: Color(0xFF404040),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: 0.18,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Full Name',
                        style: TextStyle(
                          color: Color(0xFFC7C9D9),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.12,
                        ),
                      ),

                      // Input Field Name
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your full name',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),

                      // Input Field Subject
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _subjectController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter subject',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter subject';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      // Dropdown for Type of Test
                      DropdownButtonFormField<String>(
                        value: _selectedTestType,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Type of Test',
                        ),
                        items: const [
                          DropdownMenuItem<String>(
                            value: 'UTS',
                            child: Text('UTS'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'UAS',
                            child: Text('UAS'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'QUIZ',
                            child: Text('QUIZ'),
                          ),
                        ],
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedTestType = newValue;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select the type of test';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Checkbox for Test Readiness
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Checkbox(
                            value: _isTestReady,
                            onChanged: (bool? value) {
                              setState(() {
                                _isTestReady = value ?? false;
                              });
                            },
                          ),
                          const Text("Saya siap mengikuti Ujian")
                        ],
                      ),

                      // Submit Button
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _isTestReady
                            ? () {
                                if (_formKey.currentState!.validate()) {
                                  // Navigate to the DisplayDataPage with form data
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DisplayDataPage(
                                        name: _nameController.text,
                                        subject: _subjectController.text,
                                        testType: _selectedTestType!,
                                      ),
                                    ),
                                  );
                                }
                              }
                            : null, // Disable button when _isTestReady is false
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF10C3C0),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: const Text(
                          'Submit',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
