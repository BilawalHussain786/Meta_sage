import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/ui/widgets/all_icons.dart';
import 'package:meta_sage_web/ui/widgets/all_platforms.dart';
import 'package:meta_sage_web/ui/widgets/enterprise_software.dart';
import 'package:meta_sage_web/ui/widgets/footer.dart';
import 'package:meta_sage_web/ui/widgets/images_list.dart';
import 'package:meta_sage_web/ui/widgets/optimize_wiget.dart';

import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _videoPlayerController;
  //final videoPlayerController = TextEditingController();
  late Future<void> _inilizevideoPlayerFuture;
  bool isPlaying = true;
  double _currentSliderValue = 0.0;
  late List<bool> itemHoverStates;
  @override
  void initState() {
    itemHoverStates = List.generate(photo.length, (index) => false);
    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
        "https://download.odoocdn.com/videos/odoo_com/video_homepage.webm"));
    _inilizevideoPlayerFuture = _videoPlayerController.initialize().then((_) {
      // if (isPlaying) {
      //   _videoPlayerController.play().catchError((Object error) {
      //     // Handle any errors thrown while attempting to play the video.
      //     print('Error: $error');
      //     // You can choose to show an error message to the user or perform any other actions.
      //   });
      // }
      _videoPlayerController.setVolume(0);
      _videoPlayerController.setLooping(true);
      setState(() {});
      _videoPlayerController.addListener(() {
        setState(() {
          _currentSliderValue =
              _videoPlayerController.value.position.inSeconds.toDouble();
        });
      });
    });

    super.initState();
  }

  void _togglePlaying() {
    setState(() {
      if (isPlaying) {
        _videoPlayerController.pause();
      } else {
        _videoPlayerController.play().catchError((Object e) {});
      }
      isPlaying = !isPlaying;
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    dynamic size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Text(
            "Transforming Your Digital Landscape With Metasage.",
            style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                fontFamily: 'Caveat'),
          ),
        ),
        const Text(
          "Innovation Meets Expertise !",
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.w900, fontFamily: 'Caveat'),
        ),
        const SizedBox(height: 100),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(500, 150),
                topRight: Radius.elliptical(500, 150)),
            color: ConstColor.lightgray,
          ),
          //height: MediaQuery.of(context).size.height * 1,
          width: size.width * 1,
          child: Column(
            children: [
              // const Padding(
              //   padding: EdgeInsets.only(right: 150, left: 150, top: 150),
              //   child: MyGridView(),
              // ),
              const AllIcons(),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.only(right: 150, left: 150, top: 60),
                child: Text(
                  "Imagine a vast collection of business apps at your disposal.",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
              ),
              //SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(right: 150, left: 150, top: 10),
                child: Text(
                    "Got something to improve? There is an app for that.",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 150,
                  left: 150,
                ),
                child: Text("No complexity, no cost, just a one-click install.",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
              ),
              // SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(right: 150, left: 150, top: 30),
                child: Text(
                    "Each app simplifies a process and empowers more people.",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 150, left: 150),
                child: Text(
                    " Imagine the impact when everyone gets the right tool for the job, with perfect integration.",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
              ),
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Container(
                  // height: 500,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(400),
                        bottomLeft: Radius.circular(500)),
                    color: ConstColor.white,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 60),
                      const Text(
                        "Level up your quality of work",
                        style: TextStyle(
                            fontSize: 100,
                            fontFamily: "Caveat",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 50),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        decoration: BoxDecoration(
                            color: ConstColor.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.2), // shadow color
                                spreadRadius: 5, // how spread the shadow is
                                blurRadius: 7, // how blurred the shadow is
                                offset: const Offset(
                                    3, 4), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Videobuilder(),
                          // child: VideoPlayerWiget(
                          //   videoUrl: (Uri.parse(
                          //       "https://download.odoocdn.com/videos/odoo_com/video_homepage.webm")),
                          // ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: _togglePlaying,
                      // onPressed: () {
                      //   setState(() {
                      //     if (_videoPlayerController.value.isPlaying) {
                      //       _videoPlayerController.pause();
                      //     } else {
                      //       _videoPlayerController.play();
                      //     }
                      //     isPlaying = !isPlaying;
                      //   });
                      // },
                      icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Slider(
                      value: _currentSliderValue,
                      min: 0.0,
                      max: _videoPlayerController.value.duration.inSeconds
                          .toDouble(),
                      onChanged: (value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                        _videoPlayerController
                            .seekTo(Duration(seconds: value.toInt()));
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              const OptimizeProducts(),
              const SizedBox(height: 100),
            ],
          ),
        ),
        const SizedBox(height: 50),
        const Text("All the tech in one platform",
            style: TextStyle(
                fontSize: 90,
                fontWeight: FontWeight.bold,
                fontFamily: "Caveat")),
        const SizedBox(height: 40),
        const AllPlatform(),
        const SizedBox(height: 50),
        const EnterpriseSoftware(),
        const SizedBox(
          height: 20,
        ),
        const Footer(),
      ]),
    );
  }

  Widget Videobuilder() {
    return FutureBuilder(
        future: _inilizevideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController));
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
