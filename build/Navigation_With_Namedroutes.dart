import 'package:flutter/material.dart';

void main() {
  runApp(const RoutesDemo());
}

class RoutesDemo extends StatelessWidget {
  const RoutesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      onGenerateRoute: (settings) {
        if (settings.name == '/about') {
          return MaterialPageRoute(builder: (_) => const AboutPage());
        } else if (settings.name == '/contact') {
          return MaterialPageRoute(builder: (_) => const ContactPage());
        }
        return null;
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _navigate(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🏠 Home")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => _navigate(context, const AboutPage()),
            child: const Text("Go to About Page"),
          ),
          ElevatedButton(
            onPressed: () => _navigate(context, const ContactPage()),
            child: const Text("Go to Contact Page"),
          ),
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ℹ️ About")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Back to Home"),
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("📞 Contact")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Back to Home"),
        ),
      ),
    );
  }
}
