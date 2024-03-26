import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/ui/widgets/comminity_List.dart';

class CommunityList extends StatefulWidget {
  const CommunityList({super.key});

  @override
  State<CommunityList> createState() => _CommunityListState();
}

class _CommunityListState extends State<CommunityList> {
  @override
  Widget build(BuildContext context) {
    dynamic size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ConstColor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: SizedBox(
                  height: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Learn",
                              style: TextStyle(color: ConstColor.orange)),
                          Container(
                            height: 1,
                            width: size.width * 0.15,
                            color: ConstColor.orange,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: learnList
                                .map((item) => Row(
                                      children: [
                                        Text(item.title.toString()),
                                        const SizedBox(
                                            height:
                                                30), // Adjust the width as needed
                                      ],
                                    ))
                                .toList(),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text("Empower Education",
                              style: TextStyle(color: ConstColor.orange)),
                          Container(
                            height: 1,
                            width: size.width * 0.15,
                            color: ConstColor.orange,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: empowerList
                                .map((item) => Row(
                                      children: [
                                        Text(item.title.toString()),
                                        const SizedBox(
                                            height:
                                                30), // Adjust the width as needed
                                      ],
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Get The Software",
                              style: TextStyle(color: ConstColor.greenColor)),
                          Container(
                            height: 1,
                            width: size.width * 0.15,
                            color: ConstColor.greenColor,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: getSoftwareList
                                .map((item) => Row(
                                      children: [
                                        Text(item.title.toString()),
                                        const SizedBox(
                                            height:
                                                30), // Adjust the width as needed
                                      ],
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Collaborate",
                              style: TextStyle(color: ConstColor.brownColor)),
                          Container(
                            height: 1,
                            width: size.width * 0.15,
                            color: ConstColor.brownColor,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: collaborateList
                                .map((item) => Row(
                                      children: [
                                        Text(item.title.toString()),
                                        const SizedBox(
                                            height:
                                                30), // Adjust the width as needed
                                      ],
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Get Services",
                              style: TextStyle(color: ConstColor.bluegrey)),
                          Container(
                            height: 1,
                            width: size.width * 0.15,
                            color: ConstColor.bluegrey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: getServicesList
                                .map((item) => Row(
                                      children: [
                                        Text(item.title.toString()),
                                        const SizedBox(
                                            height:
                                                30), // Adjust the width as needed
                                      ],
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
