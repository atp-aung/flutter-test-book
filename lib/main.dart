import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const String _imageTag = 'my-hero-image';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Small Hero')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return const DetailScreen();
                },
              ),
            );
          },

          // Hero on first screen
          child: Hero(
            tag: _imageTag,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.blueAccent.shade700,
              ),
              child: const Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Large Hero')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },

          // Hero with SAME tag
          child: Hero(
            tag: _imageTag,
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.redAccent,
              ),
              child: const Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 150,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
