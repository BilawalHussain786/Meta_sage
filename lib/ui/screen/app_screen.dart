import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/ui/widgets/app_lists.dart';

class AppsList extends StatefulWidget {
  const AppsList({super.key});

  @override
  State<AppsList> createState() => _AppsListState();
}

class _AppsListState extends State<AppsList> {
  Finance? finance;
  @override
  Widget build(BuildContext context) {
    dynamic size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("FINANCE",
                            style: TextStyle(color: ConstColor.greenColor)),
                        Container(
                          height: 1,
                          width: size.width * 0.15,
                          color: ConstColor.greenColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: financeList
                              .map((item) => Row(
                                    children: [
                                      Text(item.title.toString()),
                                      SizedBox(
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
                        Text("SALES",
                            style: TextStyle(color: ConstColor.orange)),
                        Container(
                          height: 1,
                          width: size.width * 0.15,
                          color: ConstColor.orange,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: salesList
                              .map((item) => Row(
                                    children: [
                                      Text(item.title.toString()),
                                      SizedBox(
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
                        Text("WEBSITES",
                            style: TextStyle(color: ConstColor.bluegrey)),
                        Container(
                          height: 1,
                          width: size.width * 0.15,
                          color: ConstColor.bluegrey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: webList
                              .map((item) => Row(
                                    children: [
                                      Text(item.title.toString()),
                                      SizedBox(
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
                        Text("INVENTROY & MRP",
                            style: TextStyle(color: ConstColor.purple)),
                        Container(
                          height: 1,
                          width: size.width * 0.15,
                          color: ConstColor.purple,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: inventoryList
                              .map((item) => Row(
                                    children: [
                                      Text(item.title.toString()),
                                      SizedBox(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("HUMAN RESOURCES",
                          style: TextStyle(color: ConstColor.purple)),
                      Container(
                        height: 1,
                        width: size.width * 0.15,
                        color: ConstColor.purple,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: humanResourcesList
                            .map((item) => Row(
                                  children: [
                                    Text(item.title.toString()),
                                    SizedBox(
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
                      Text("MARKETING",
                          style: TextStyle(color: ConstColor.orange)),
                      Container(
                        height: 1,
                        width: size.width * 0.15,
                        color: ConstColor.orange,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: marketingList
                            .map((item) => Row(
                                  children: [
                                    Text(item.title.toString()),
                                    SizedBox(
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
                      Text("SERVICES",
                          style: TextStyle(color: ConstColor.orange)),
                      Container(
                        height: 1,
                        width: size.width * 0.15,
                        color: ConstColor.orange,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: servicesList
                            .map((item) => Row(
                                  children: [
                                    Text(item.title.toString()),
                                    SizedBox(
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
                      Text("PRODUCTIVITY",
                          style: TextStyle(color: ConstColor.deepPurple)),
                      Container(
                        height: 1,
                        width: size.width * 0.15,
                        color: ConstColor.deepPurple,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: productivityList
                            .map((item) => Row(
                                  children: [
                                    Text(item.title.toString()),
                                    SizedBox(
                                        height:
                                            30), // Adjust the width as needed
                                  ],
                                ))
                            .toList(),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
