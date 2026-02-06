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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Fade in image')),
        body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: '../assets/lodd.gif',
            image:
                'https://images.pexels.com/photos/34295250/pexels-photo-34295250.jpeg',
          ),
        ),
      ),
    );
  }
}
