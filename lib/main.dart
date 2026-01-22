import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('image Demo')),
      body: Image.network(
          'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-6b7f8b61e2c1fdb3e2c3c1c8b9e9b9f2.png'),
    );
  }
}
