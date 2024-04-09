import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/constant/const_icons.dart';
import 'package:meta_sage_web/constant/const_images.dart';
import 'package:meta_sage_web/ui/screen/become_patner.dart';
import 'package:meta_sage_web/ui/screen/find_a_patner.dart';
import 'package:meta_sage_web/ui/screen/privacy_screen.dart';
import 'package:meta_sage_web/ui/widgets/comminity_List.dart';
import 'package:meta_sage_web/ui/widgets/hover_items.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => FooterState();
}

bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 764;
bool isMobile(BuildContext context) =>
    MediaQuery.of(context).size.width >= 300 &&
    MediaQuery.of(context).size.width <= 763;
bool isSmallMobile(BuildContext context) =>
    MediaQuery.of(context).size.width <= 299;

class FooterState extends State<Footer> {
  List<Widget> aboutUsscreens = [
    const PrivacyScreen(),
    const PrivacyScreen(),
    const PrivacyScreen(),
    const PrivacyScreen(),
    const PrivacyScreen(),
    const PrivacyScreen(),
    const PrivacyScreen(),
    const PrivacyScreen(),
    const PrivacyScreen(),
    const PrivacyScreen(),

    // Add more screens as needed
  ];
  List<Widget> servicesScreen = [
    const FindaPartner(),
    const FindaPartner(),
    const FindaPartner(),
    const FindaPartner(),
    const FindaPartner(),
    const FindaPartner(),
    const FindaPartner(),
    const BecomePatner(),

    // Add more screens as needed
  ];
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ConstColor.darkBlue,
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        children: [
          const SizedBox(height: 15),
          const Text(
            "MetaSage",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: ConstColor.white),
          ),
          const SizedBox(height: 25),
          if (isDesktop(context))
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Community",
                          style:
                              TextStyle(color: ConstColor.white, fontSize: 20)),
                      const SizedBox(
                        height: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: communityBList
                            .map((item) => HoverTextfooter(title: item.title))
                            .toList(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Open Source",
                          style:
                              TextStyle(color: ConstColor.white, fontSize: 20)),
                      const SizedBox(
                        height: 3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: openSourceLst
                            .map((item) => HoverTextfooter(title: item.title))
                            .toList(),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Services",
                          style:
                              TextStyle(color: ConstColor.white, fontSize: 20)),
                      const SizedBox(
                        height: 3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(servicesLt.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              // Navigate to the screen corresponding to the clicked item
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        servicesScreen[index]),
                              );
                            },
                            child:
                                HoverTextfooter(title: servicesLt[index].title),
                          );
                        }),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("About us",
                          style: TextStyle(
                            fontSize: 20,
                            color: ConstColor.white,
                          )),
                      const SizedBox(
                        height: 3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(aboutusList.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              // Navigate to the screen corresponding to the clicked item
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        aboutUsscreens[index]),
                              );
                            },
                            child: HoverTextfooter(
                                title: aboutusList[index].title),
                          );
                        }),
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: aboutusList
                      //       .map((item) => HoverTextfooter(title: item.title))
                      //       .toList(),
                      // ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: aboutusList
                      //       .map((item) => Row(
                      //             children: [
                      //               Text(item.title.toString(),
                      //                   style: const TextStyle(
                      //                       color: ConstColor.greyColor,
                      //                       fontSize: 14)),
                      //               const SizedBox(
                      //                   height:
                      //                       25), // Adjust the width as needed
                      //             ],
                      //           ))
                      //       .toList(),
                      // ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Metasage is a suite of open source business apps that cover all your company needs: CRM, eCommerce, accounting, inventory, point of sale, project management, etc.",
                          style: TextStyle(
                              color: ConstColor.greyColor, fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Metasage unique value proposition is to be at the same time very easy to use and fully integrated.",
                          style: TextStyle(
                              color: ConstColor.greyColor, fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ConstIcons.fb,
                              ConstIcons.twitter,
                              ConstIcons.linkdin,
                              ConstIcons.github,
                              ConstIcons.instagram,
                              ConstIcons.email,
                              ConstIcons.phone,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          if (isDesktop(context))
            Container(
              color: ConstColor.blackaccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        _isHovered = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        _isHovered = false;
                      });
                    },
                    child: Text("Copyright © 2024",
                        style: TextStyle(
                            color: _isHovered ? Colors.white : Colors.grey,
                            fontSize: 18)),
                  ),
                  Image.asset(
                    ConstImages.metaSage,
                    width: 120,
                  ),
                ],
              ),
            ),
          if (isMobile(context))
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Community",
                                style: TextStyle(
                                    color: ConstColor.white, fontSize: 20)),
                            const SizedBox(
                              height: 7,
                            ),
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: communityBList
                                  .map((item) =>
                                      HoverTextfooter(title: item.title))
                                  .toList(),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text("Open Source",
                                style: TextStyle(
                                    color: ConstColor.white, fontSize: 20)),
                            const SizedBox(
                              height: 3,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: openSourceLst
                                  .map((item) =>
                                      HoverTextfooter(title: item.title))
                                  .toList(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Services",
                                style: TextStyle(
                                    color: ConstColor.white, fontSize: 20)),
                            const SizedBox(
                              height: 3,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                                  List.generate(servicesLt.length, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    // Navigate to the screen corresponding to the clicked item
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              servicesScreen[index]),
                                    );
                                  },
                                  child: HoverTextfooter(
                                      title: servicesLt[index].title),
                                );
                              }),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("About us",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: ConstColor.white,
                                )),
                            const SizedBox(
                              height: 3,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                                  List.generate(aboutusList.length, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    // Navigate to the screen corresponding to the clicked item
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              aboutUsscreens[index]),
                                    );
                                  },
                                  child: HoverTextfooter(
                                      title: aboutusList[index].title),
                                );
                              }),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Metasage is a suite of open source business apps that cover all your company needs: CRM, eCommerce, accounting, inventory, point of sale, project management, etc.",
                          style: TextStyle(
                              color: ConstColor.greyColor, fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Metasage unique value proposition is to be at the same time very easy to use and fully integrated.",
                          style: TextStyle(
                              color: ConstColor.greyColor, fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ConstIcons.fb,
                            ConstIcons.twitter,
                            ConstIcons.linkdin,
                            ConstIcons.github,
                            ConstIcons.instagram,
                            ConstIcons.email,
                            ConstIcons.phone,
                          ],
                        ),
                      ],
                    ),
                  ]),
            ),
          if (isMobile(context))
            Container(
              color: ConstColor.blackaccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        _isHovered = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        _isHovered = false;
                      });
                    },
                    child: Text("Copyright © 2024",
                        style: TextStyle(
                            color: _isHovered ? Colors.white : Colors.grey,
                            fontSize: 18)),
                  ),
                  Image.asset(
                    ConstImages.metaSage,
                    width: 80,
                  ),
                ],
              ),
            ),
          if (isSmallMobile(context))
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Community",
                        style:
                            TextStyle(color: ConstColor.white, fontSize: 15)),
                    const SizedBox(
                      height: 7,
                    ),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: communityBList
                          .map((item) => HoverTextfooter(title: item.title))
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    const Text("Open Source",
                        style:
                            TextStyle(color: ConstColor.white, fontSize: 15)),
                    const SizedBox(
                      height: 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: openSourceLst
                          .map((item) => HoverTextfooter(title: item.title))
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    const Text("Services",
                        style:
                            TextStyle(color: ConstColor.white, fontSize: 15)),
                    const SizedBox(
                      height: 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(servicesLt.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            // Navigate to the screen corresponding to the clicked item
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => servicesScreen[index]),
                            );
                          },
                          child:
                              HoverTextfooter(title: servicesLt[index].title),
                        );
                      }),
                    ),
                    const SizedBox(height: 20),
                    const Text("About us",
                        style: TextStyle(
                          fontSize: 15,
                          color: ConstColor.white,
                        )),
                    const SizedBox(
                      height: 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(aboutusList.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            // Navigate to the screen corresponding to the clicked item
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => aboutUsscreens[index]),
                            );
                          },
                          child:
                              HoverTextfooter(title: aboutusList[index].title),
                        );
                      }),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Metasage is a suite of open source business apps that cover all your company needs: CRM, eCommerce, accounting, inventory, point of sale, project management, etc.",
                          style: TextStyle(
                              color: ConstColor.greyColor, fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Metasage unique value proposition is to be at the same time very easy to use and fully integrated.",
                          style: TextStyle(
                              color: ConstColor.greyColor, fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ConstIcons.fb,
                            ConstIcons.twitter,
                            ConstIcons.linkdin,
                            ConstIcons.github,
                            ConstIcons.instagram,
                            ConstIcons.email,
                            ConstIcons.phone,
                          ],
                        ),
                      ],
                    ),
                  ]),
            ),
          if (isSmallMobile(context))
            Container(
              color: ConstColor.blackaccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        _isHovered = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        _isHovered = false;
                      });
                    },
                    child: Text("Copyright © 2024",
                        style: TextStyle(
                            color: _isHovered ? Colors.white : Colors.grey,
                            fontSize: 12)),
                  ),
                  Image.asset(
                    ConstImages.metaSage,
                    width: 50,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
