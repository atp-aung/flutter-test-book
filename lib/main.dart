import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RadioDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RadioDemo extends StatefulWidget {
  const RadioDemo({super.key});

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

enum Gender { male, female, other }

extension GenderExtension on Gender {
  String get text {
    switch (this) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
      case Gender.other:
        return 'Other';
    }
  }
}

class _RadioDemoState extends State<RadioDemo> {
  Gender? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: Gender.values
              .map(
                (option) => RadioListTile<Gender>(
                  title: Text(option.text),
                  value: option,
                  groupValue: _selectedOption,
                  onChanged: (Gender? value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
