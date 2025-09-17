import 'package:flutter/material.dart';

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
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

  void _increment() {
    setState(() => counter++);
  }

  void _decrement() {
    setState(() => counter--);
  }

  void _reset() {
    setState(() => counter = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Counter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Counter Value:", style: TextStyle(fontSize: 20)),
            Text(
              "$counter",
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _decrement,
                  icon: const Icon(Icons.remove),
                  label: const Text("Decrement"),
                ),
                const SizedBox(width: 15),
                ElevatedButton.icon(
                  onPressed: _increment,
                  icon: const Icon(Icons.add),
                  label: const Text("Increment"),
                ),
              ],
            ),
            const SizedBox(height: 15),
            OutlinedButton.icon(
              onPressed: _reset,
              icon: const Icon(Icons.refresh),
              label: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
