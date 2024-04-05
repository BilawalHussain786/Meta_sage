import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/constant/const_images.dart';
import 'package:meta_sage_web/ui/widgets/app_lists.dart';
import 'package:meta_sage_web/ui/widgets/comminity_List.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    dynamic size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ConstColor.accentblack,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ConstColor.white,
        title: Image.asset(
          ConstImages.metaSage,
          height: 90,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("FINANCE",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: financeList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("SALES",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: salesList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("WEBSITES",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: webList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("INVENTORY & MRP",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: inventoryList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("HUMAN RESOURCES",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: humanResourcesList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("MARKETING",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: marketingList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("SERVICES",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: servicesList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("PRODUCTIVITY",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: productivityList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("LEARN",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: learnList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("EMPOWER EDUCATION",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: empowerList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("GET THE SOFTWARE",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: getSoftwareList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("COLLABORATE",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: collaborateList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: size.width * 1,
                      color: ConstColor.lightblack,
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("GET SERVICES",
                              style: TextStyle(
                                  color: ConstColor.white, fontSize: 15)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: getServicesList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: const TextStyle(
                                        color: ConstColor.white),
                                  ),
                                  const SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
