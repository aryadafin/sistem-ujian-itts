import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({super.key});

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Page"),
        backgroundColor: const Color(0xFF10C3C0),
      ),
      body: Center(
        child: Text(
          "Welcome to Stateful Page!",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
