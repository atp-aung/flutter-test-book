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
      body: Image.asset('assets/lddg.jpg'),
      // body: Image.network(
      //     'https://cdn.pixabay.com/photo/2023/09/25/20/38/lisbon-8275994_1280.jpg'),
    );
  }
}
