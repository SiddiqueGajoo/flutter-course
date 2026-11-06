import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  double result = 0;

  void calculate(String operation) {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);

    setState(() {
      if (operation == '+') {
        result = num1 + num2;
      } else if (operation == '-') {
        result = num1 - num2;
      } else if (operation == '*') {
        result = num1 * num2;
      } else if (operation == '/') {
        result = num1 / num2;
      } else if (operation == '%') {
        result = num1 % num2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter first number',
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter second number',
              ),
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => calculate('+'),
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => calculate('-'),
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => calculate('*'),
                  child: const Text('*'),
                ),
                ElevatedButton(
                  onPressed: () => calculate('/'),
                  child: const Text('/'),
                ),
                ElevatedButton(
                  onPressed: () => calculate('%'),
                  child: const Text('%'),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Text(
              'Result: $result',
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
