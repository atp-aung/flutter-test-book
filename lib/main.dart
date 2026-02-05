import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoPlayerDemo(),
    );
  }
}

class VideoPlayerDemo extends StatefulWidget {
  const VideoPlayerDemo({super.key});

  @override
  State<VideoPlayerDemo> createState() => _VideoPlayerDemoState();
}

class _VideoPlayerDemoState extends State<VideoPlayerDemo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    // _controller = VideoPlayerController.file('/path/to/your/video.mp4' as File)
    //   ..initialize().then((_) {
    //     setState(() {});
    //   });

    // _controller = VideoPlayerController.asset(
    //   'assets/videos/sample_video.mp4',
    // )..initialize().then((_) {
    //     setState(() {});
    //   });
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    )..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Play / Pause Video'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _controller.value.isPlaying
                            ? _controller.pause()
                            : _controller.play();
                      });
                    },
                    child: Text(
                      _controller.value.isPlaying ? 'Pause' : 'Play',
                    ),
                  ),
                ],
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
