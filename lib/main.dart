import 'package:flutter/material.dart';

void main() {
  runApp(const Counter());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

class Counter extends StatefulWidget {
  const Counter(({super.key}) ;

  final String title;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
              body: Column(
          children: [
            Text("$_counter"),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() => _counter++);
              },
            ),
          ],
        ),
//  auto-formatting nicer for build methods.
    );
  }
}
