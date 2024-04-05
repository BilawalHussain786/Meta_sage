import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/constant/const_images.dart';
import 'package:meta_sage_web/ui/widgets/enterprise_software.dart';
import 'package:meta_sage_web/ui/widgets/footer.dart';
import 'package:meta_sage_web/ui/widgets/images_list.dart';
import 'package:meta_sage_web/ui/widgets/optimize_wiget.dart';
import 'package:meta_sage_web/ui/widgets/gridView.dart';
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
              const Padding(
                padding: EdgeInsets.only(right: 250, left: 250, top: 150),
                child: MyGridView(),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 200, left: 200, top: 150),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Column(
              //         children: [
              //           ReuseableContainer(
              //             url: ConstImages.finance,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Finance",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.pos,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Point of Sales ",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.fieldforce,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Field Force",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.inventoryIcon,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Inventory",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //         ],
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           ReuseableContainer(
              //             url: ConstImages.sign,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Digital Sign",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.documents,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Document",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.helpdesk,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Help Desk",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.manufacturing,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Manufacturing",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //         ],
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           ReuseableContainer(
              //             url: ConstImages.crm,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "CRM",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.projects,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Project",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.socialmarketing,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Social Marketing",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.sales,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Sale",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //         ],
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           ReuseableContainer(
              //             url: ConstImages.subscription,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Subscription",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.attandence,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Attandence",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.emailmarketing,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Email Marketing",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.humanResource,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Human Resource",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //         ],
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           ReuseableContainer(
              //             url: ConstImages.rental,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Rental",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.planing,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Planing",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.purchase,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Purchase",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //           const SizedBox(height: 20),
              //           ReuseableContainer(
              //             url: ConstImages.dashboard,
              //           ),
              //           const SizedBox(height: 10),
              //           const Text(
              //             "Dashboard",
              //             style: TextStyle(
              //                 fontSize: 14, fontWeight: FontWeight.w600),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

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
        // const Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 80),
        //   child: TechGridView(),
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ConstColor.lightgray),
                    child: Center(
                      child: Image.asset(
                        ConstImages.shopFloor,
                        height: 180,
                        width: 180,
                      ),
                    ),
                  ),
                  const Text("Shop Floor",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ConstColor.lightgray),
                    child: Center(
                      child: Image.asset(
                        ConstImages.expenses,
                        height: 180,
                        width: 180,
                      ),
                    ),
                  ),
                  const Text("Expenses",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ConstColor.lightgray),
                    child: Center(
                      child: Image.asset(
                        ConstImages.pointofSale,
                        height: 180,
                        width: 180,
                      ),
                    ),
                  ),
                  const Text("Point of Sale",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ConstColor.lightgray),
                    child: Center(
                      child: Image.asset(
                        ConstImages.ioT,
                        height: 180,
                        width: 180,
                      ),
                    ),
                  ),
                  const Text("IoT",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: ConstColor.lightgray,
                    ),
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.contain, // You can adjust the fit here
                        child: Image.asset(
                          ConstImages.frontdesk,
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                  ),
                  const Text("Frontdesk",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ConstColor.lightgray),
                    child: Center(
                      child: Image.asset(
                        ConstImages.inventory,
                        height: 180,
                        width: 180,
                      ),
                    ),
                  ),
                  const Text("Inventory",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ConstColor.lightgray),
                    child: Center(
                      child: Image.asset(
                        ConstImages.kiosk,
                        height: 180,
                        width: 180,
                      ),
                    ),
                  ),
                  const Text("Kiosk",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
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
