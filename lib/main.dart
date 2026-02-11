import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: AnimatedSplash(
        type: Transition.fade,
        curve: Curves.fastEaseInToSlowEaseOut,
        backgroundColor: Colors.black,
        durationInSeconds: 3,
        navigator: const HomePage(),
        child: const FlutterLogo(
          size: 100,
          textColor: Colors.blue,
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Application"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text(
          "Welcome to Flutter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
