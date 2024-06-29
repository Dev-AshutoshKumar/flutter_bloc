import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    var first = TextEditingController();
    var second = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: first,
              decoration: InputDecoration(
                labelText: 'Enter first', // Label text
                // Placeholder text// Suffix icon
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)), // Border
              ),
            ),
            TextField(
              controller: first,
              decoration: InputDecoration(
                labelText: 'Enter first', // Label text
                // Placeholder text// Suffix icon
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)), // Border
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(onPressed: () {

            }, child: Text("Calculate"))
          ],
        ),
      ),
    );
  }
}
