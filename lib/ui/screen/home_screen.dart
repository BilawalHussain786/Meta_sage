import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/ui/widgets/reuseable_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
            ),
            child: const Text(
              "All your business on one platform",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 100),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(800, 300),
                  topRight: Radius.elliptical(800, 300)),
              color: ConstColor.lightgray,
            ),
            //height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 120, left: 120, top: 150),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Accounting",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Knowledge",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Sign",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "CRM",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Studio",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Subscriptions",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Rental",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Point of Sale",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Discuss",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Documents",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Project",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "TimeSheets",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Field Service",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Planning",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Helpdesk",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Website",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Socila Marketing",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Email Marketing",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Purchase",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Inventory",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Manufacturing",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Sales",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "HR",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ReuseableContainer(
                              url: "assets/images/accounting.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Dashoard",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Text(
                      "Imagine a vast collection of business apps at your disposal.",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 20),
                    Text(
                        "Got something to improve? There is an app for that.No complexity, no cost, just a one-click install.",
                        style: TextStyle(fontSize: 15)),
                    SizedBox(height: 30),
                    Text(
                        "Each app simplifies a process and empowers more people. Imagine the impact when everyone gets the right tool for the job, with perfect integration.",
                        style: TextStyle(fontSize: 15)),
                    Container(
                      height: 500,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(400),
                            bottomLeft: Radius.circular(400)),
                        color: ConstColor.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 60),
                          Text(
                            "Level up your quality of work",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 60),
          Text("All the tech in one platform",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          SizedBox(height: 40),
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
                          "assets/images/Shop_Floor.webp",
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    Text("Shop Floor",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
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
                          "assets/images/Expenses.webp",
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    Text("Expenses",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
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
                          "assets/images/Point_of_Sale.webp",
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    Text("Point of Sale",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
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
                          "assets/images/IoT.webp",
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    Text("IoT",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
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
                            "assets/images/Frontdesk.webp",
                            height: 180,
                            width: 180,
                          ),
                        ),
                      ),
                    ),
                    Text("Frontdesk",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
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
                          "assets/images/Inventory.webp",
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    Text("Inventory",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
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
                          "assets/images/Kiosk.webp",
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    Text("Kiosk",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            //height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(200, 300),
                  bottomRight: Radius.elliptical(200, 300)),
              color: ConstColor.lightgray,
            ),
            child: Column(
              children: [
                const Text(
                  "Enterprise software done right.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: ConstColor.white,
                        child: Column(
                          children: [
                            Text(
                              "Open source",
                            ),
                            Text(
                                "Behind the technology is a community of 100k+ developers collaborating worldwide. We're united by the spirit of open source, and a common vision: to transform companies, empower employees."),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text:
                                          'Odoo is available in two editions:'),
                                  TextSpan(
                                    text: '• Community: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(text: 'Open Source, 100% free.'),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: '• Enterprise: '),
                                  TextSpan(
                                    text:
                                        'extra apps, infrastructure and professional services.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        color: ConstColor.white,
                        child: Column(
                          children: [
                            Text("Open source"),
                            Text(
                                "Behind the technology is a community of 100k+ developers collaborating worldwide. We're united by the spirit of open source, and a common vision: to transform companies, empower employees."),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text:
                                          'Odoo is available in two editions:'),
                                  TextSpan(
                                    text: '• Community: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(text: 'Open Source, 100% free.'),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: '• Enterprise: '),
                                  TextSpan(
                                    text:
                                        'extra apps, infrastructure and professional services.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
