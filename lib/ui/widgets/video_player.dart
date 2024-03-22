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
import 'package:flutter/material.dart';

class TopSheet extends StatefulWidget {
  @override
  State<TopSheet> createState() => _TopSheetState();
}

class _TopSheetState extends State<TopSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Top Sheet Example'),
      // ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ElevatedButton(
          onPressed: () {
            // Top Sheet ko dikhane ke liye Custom function ka istemal karein
            _showTopSheet(context);
          },
          child: Text('Top Sheet Dikhaye'),
        ),
      ),
    );
  }

  void _showTopSheet(BuildContext context) {
    // Ek custom animation controller banayein
    AnimationController controller = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: Navigator.of(context),
    );

    // Animation ko define karein
    Animation<Offset> offsetAnimation =
        Tween<Offset>(begin: Offset(0.0, -100.0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );

    // Animation controller ko forward karein
    controller.forward();

    // Ek container ko stack mein show karein jisme animation ka istemal kiya jayega
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SlideTransition(
          position: offsetAnimation,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            color: Colors.white,
            child: Center(
              child: Text('Yeh Top Sheet hai!'),
            ),
          ),
        );

        // Stack(
        //   children: <Widget>[
        // GestureDetector(
        //   onTap: () {
        //     // Sheet ke bahar tap karne par sheet ko hide karein
        //     //controller.reverse();
        //     setState(() {
        //       Navigator.pop(context);
        //     });
        //   },
        //   child: Container(
        //     color: Colors.black.withOpacity(0.5),
        //   ),
        // ),
        // Positioned(
        //   bottom: 0,
        //   left: 0,
        //   right: 0,
        //   child:
        //     // ),
        //   ],
        // );
      },
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 120, right: 120, top: 150),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc"),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Text("abc")
              ],
            )
          ],
        ),
      ),
    );
  }
}
