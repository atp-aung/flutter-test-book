import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
        appBar: AppBar(title: const Text("Fade in images")),
        body: Stack(
          children: [
            const Center(child: CircularProgressIndicator()),
            Center(
              // child: FadeInImage.assetNetwork(
              //     placeholder: String.fromCharCode(0xe3b0),
              //     image:
              //         'https://cdn.pixabay.com/photo/2020/03/25/12/41/beach-4967176_1280.jpg'),
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    'https://cdn.pixabay.com/photo/2020/03/25/12/41/beach-4967176_1280.jpg',
              ),
            ),
          ],
        ),
      ),
    );
    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text("titletext"),
    //     ),
    //     body: Center(
    //         child: FadeInImage.assetNetwork(
    //       placeholder: '/presee.jpg',
    //       image:
    //           'https://images.pexels.com/photos/34295250/pexels-photo-34295250.jpeg',
    //     )),
    //   ),
    // );
  }
}
