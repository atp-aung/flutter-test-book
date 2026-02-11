import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool b = false;

  void _changeMode() {
    setState(() {
      b = !b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Animated Container")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Top Animated Container
              AnimatedContainer(
                color: b ? Colors.tealAccent : Colors.blueAccent,
                height: b ? 300.0 : 100.0,
                duration: const Duration(seconds: 1),
                child: Center(
                  child: Text(
                    'Top',
                    style: TextStyle(
                      color: b ? Colors.black : Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w200,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // Bottom Animated Container
              AnimatedContainer(
                color: b ? Colors.redAccent : Colors.orangeAccent,
                height: b ? 100.0 : 300.0,
                duration: const Duration(seconds: 1),
                child: Center(
                  child: Text(
                    'Bottom',
                    style: TextStyle(
                      color: b ? Colors.black : Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w200,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _changeMode,
          child: const Icon(Icons.change_circle),
        ),
      ),
    );
  }
}
