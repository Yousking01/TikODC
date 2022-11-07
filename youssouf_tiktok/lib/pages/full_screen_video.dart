// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:video_player/video_player.dart';

// class FullScreeVideo extends StatefulWidget {
//   // const FullScreeVideo({super.key});
//   final String videoUrl;
//   FullScreeVideo(videoUrl, {required this.videoUrl});

//   @override
//   State<FullScreeVideo> createState() => _FullScreeVideoState();
// }

// class _FullScreeVideoState extends State<FullScreeVideo> {
//   late VideoPlayerController videoPlayerController;

//   @override
//   void initState() {
//     // TODO: implement initState
//     videoPlayerController = VideoPlayerController.asset(widget.videoUrl)
//       ..initialize().then((_) {
//         setState(() {
//           videoPlayerController.setLooping(true);
//           videoPlayerController.play();
//         });
//       });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return VideoPlayer(videoPlayerController);
//   }

//   @override
//   void dispose() {
//     videoPlayerController.dispose();
//     super.dispose();
//   }
// }
