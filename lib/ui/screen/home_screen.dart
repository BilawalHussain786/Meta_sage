import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/constant/const_images.dart';
import 'package:meta_sage_web/ui/widgets/app_lists.dart';
import 'package:meta_sage_web/ui/widgets/comminity_List.dart';
import 'package:meta_sage_web/ui/widgets/reuseable_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    dynamic size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ReuseableContainer(
                            url: "assets/images/accounting.png",
                          ),
                          SizedBox(height: 10),
                          const Text(
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
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 20),
                  Text(
                      "Got something to improve? There is an app for that.No complexity, no cost, just a one-click install.",
                      style: TextStyle(fontSize: 15)),
                  SizedBox(height: 30),
                  Text(
                      "Each app simplifies a process and empowers more people. Imagine the impact when everyone gets the right tool for the job, with perfect integration.",
                      style: TextStyle(fontSize: 15)),
                  SizedBox(height: 70),
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
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
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
                        "assets/images/Expenses.webp",
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
                        "assets/images/Point_of_Sale.webp",
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
                        "assets/images/IoT.webp",
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
                          "assets/images/Frontdesk.webp",
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                  ),
                  Text("Frontdesk",
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
                        "assets/images/Inventory.webp",
                        height: 180,
                        width: 180,
                      ),
                    ),
                  ),
                  Text("Inventory",
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
                        "assets/images/Kiosk.webp",
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
        Container(
          //height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(200, 300),
                bottomRight: Radius.elliptical(200, 300)),
            color: ConstColor.lightgray,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Text(
                  "Enterprise software done right.",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                // MasonryGridView.builder(
                //   itemCount: differentCList.length,
                //   gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2),
                //   itemBuilder: (context, index) => Container(
                //     color: ConstColor.white,
                //     child: Text("${index + 1}"),
                //     //height: 300,
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: EdgeInsets.all(50.0),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Open source",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Behind the technology is a community of 100k+ developers collaborating worldwide. We're united by the spirit of open source, and a common vision: to transform companies, empower employees.",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                    "MetaSage is available in two editions:",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    )),
                                const Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '• Community: ',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text: 'Open Source, 100% free.',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                          )),
                                    ],
                                  ),
                                ),
                                const Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                          text: '• Enterprise: ',
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                        text:
                                            'extra apps, infrastructure and professional services.',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Compare Editions",
                                      style: TextStyle(
                                          color: ConstColor.white,
                                          fontSize: 20),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.zero),
                                        backgroundColor:
                                            ConstColor.brownAccent),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: EdgeInsets.all(50.0),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Highly customizable",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 20),
                                const Text(
                                  "Use MetaSage Studio to automate actions, design custom screens, custom reports, or web hooks.",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(height: 20),
                                Image.asset(ConstImages.customizable)
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: EdgeInsets.all(50.0),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "40k+ community apps",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                    "Thanks to it's open source development model, MetaSage became the world's largest business apps store. Imagine getting an app for every business needs.",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    )),
                                SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Browse Community Apps",
                                      style: TextStyle(
                                          color: ConstColor.white,
                                          fontSize: 20),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.zero),
                                        backgroundColor:
                                            ConstColor.brownAccent),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: EdgeInsets.all(50.0),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "No corporate bullsh*t",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                    '"With most systems, you get 70% of what you hoped. With MetaSage, you get more than what you expected. You, guys, will transform the market." - Anonymous competitor',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: EdgeInsets.all(50.0),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "No vendor lock-in",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  "No proprietary data format, just PostgreSQL: you own your data. No software lock-in: you get the source code, GitHub access, and the flexibility to host on our infrastructure, or on premise.",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(height: 20),
                                SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Follow Us On GitHub",
                                      style: TextStyle(
                                          color: ConstColor.white,
                                          fontSize: 20),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.zero),
                                        backgroundColor:
                                            ConstColor.brownAccent),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: EdgeInsets.all(50.0),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Fair pricing",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  "No usage-based pricing, no feature upselling, no long term contracts, no hosting limits, no surprises... just a single price per user - all inclusive.",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(height: 20),
                                SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "View Pricing",
                                      style: TextStyle(
                                          color: ConstColor.white,
                                          fontSize: 20),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.zero),
                                        backgroundColor:
                                            ConstColor.brownAccent),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: EdgeInsets.all(50.0),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "A unique value proposition",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                Image.asset(
                                  "assets/images/proposition.PNG",
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          // height: MediaQuery.of(context).size.width * 0.3,
          color: ConstColor.darkBlue,
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            children: [
              Text(
                "META SAGE",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: ConstColor.white),
              ),
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Community",
                        style:
                            TextStyle(color: ConstColor.white, fontSize: 22)),
                    // Container(
                    //   height: 1,
                    //   width: size.width * 0.15,
                    //   color: ConstColor.greenColor,
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: communityBList
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: TextStyle(
                                        color: ConstColor.greyColor,
                                        fontSize: 18),
                                    //selectionColor: ConstColor.white,
                                  ),
                                  SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Text("Open Source",
                        style:
                            TextStyle(color: ConstColor.white, fontSize: 22)),
                    // Container(
                    //   height: 1,
                    //   width: size.width * 0.15,
                    //   color: ConstColor.greenColor,
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: openSourceLst
                          .map((item) => Row(
                                children: [
                                  Text(
                                    item.title.toString(),
                                    style: TextStyle(
                                        color: ConstColor.greyColor,
                                        fontSize: 18),
                                    //selectionColor: ConstColor.white,
                                  ),
                                  SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Services",
                        style:
                            TextStyle(color: ConstColor.white, fontSize: 22)),
                    // Container(
                    //   height: 1,
                    //   width: size.width * 0.15,
                    //   color: ConstColor.orange,
                    // ),

                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: servicesLt
                          .map((item) => Row(
                                children: [
                                  Text(item.title.toString(),
                                      style: TextStyle(
                                          color: ConstColor.greyColor,
                                          fontSize: 18)),
                                  SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About us",
                        style: TextStyle(
                          fontSize: 22,
                          color: ConstColor.white,
                        )),
                    // Container(
                    //   height: 1,
                    //   width: size.width * 0.15,
                    //   color: ConstColor.bluegrey,
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: aboutusList
                          .map((item) => Row(
                                children: [
                                  Text(item.title.toString(),
                                      style: TextStyle(
                                          color: ConstColor.greyColor,
                                          fontSize: 18)),
                                  SizedBox(
                                      height: 30), // Adjust the width as needed
                                ],
                              ))
                          .toList(),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    children: [
                      Text(
                        "Meta sage unique value proposition is to be at the same time very easy to use and fully integrated.",
                        style: TextStyle(
                            color: ConstColor.greyColor, fontSize: 18),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              ConstImages.fb,
                              color: ConstColor.white,
                              width: 20,
                              //color: Colors.white,
                            ),
                            Image.asset(
                              ConstImages.twitter,
                              color: ConstColor.white,
                              width: 20,
                            ),
                            Image.asset(
                              ConstImages.tiktok,
                              color: ConstColor.white,
                              width: 20,
                            ),
                            Image.asset(
                              ConstImages.github,
                              // color: ConstColor.white,
                              width: 20,
                            ),
                            Image.asset(
                              ConstImages.instagram,
                              color: ConstColor.white,
                              width: 40,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              Container(
                color: ConstColor.blackaccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Website made with",
                        style: TextStyle(
                            color: ConstColor.greyColor, fontSize: 18)),
                    Image.asset(
                      "assets/images/MetaSage.png",
                      width: 120,
                      //height: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
