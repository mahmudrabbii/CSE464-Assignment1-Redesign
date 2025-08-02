import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    setState(() {
      counter++;
    });
  }

  void decrease() {
    setState(() {
      if (counter > 0) counter--;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter Value',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: increase,
              child: const Text('Increment'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: decrease,
              child: const Text('Decrement'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: reset,
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
