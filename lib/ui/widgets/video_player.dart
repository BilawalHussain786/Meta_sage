// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoPlayerWiget extends StatefulWidget {
//   VideoPlayerWiget({super.key, required this.videoUrl});
//   dynamic videoUrl;
//   @override
//   State<VideoPlayerWiget> createState() => _VideoPlayerWigetState();
// }

// class _VideoPlayerWigetState extends State<VideoPlayerWiget> {
//   late VideoPlayerController _videoPlayerController;
//   //final videoPlayerController = TextEditingController();
//   late Future<void> _inilizevideoPlayerFuture;
//   @override
//   void initState() {
//     _videoPlayerController = VideoPlayerController.networkUrl(widget.videoUrl);
//     _inilizevideoPlayerFuture = _videoPlayerController.initialize().then((_) {
//       _videoPlayerController.play();
//       //_videoPlayerController.pause();
//       _videoPlayerController.setLooping(false);
//       setState(() {});
//     });
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: _inilizevideoPlayerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return AspectRatio(
//                 aspectRatio: _videoPlayerController.value.aspectRatio,
//                 child: VideoPlayer(_videoPlayerController));
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         });
//   }
// }
