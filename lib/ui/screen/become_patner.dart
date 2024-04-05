import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/constant/const_icons.dart';
import 'package:meta_sage_web/constant/const_images.dart';
import 'package:meta_sage_web/ui/widgets/footer.dart';

class BecomePatner extends StatefulWidget {
  const BecomePatner({super.key});

  @override
  State<BecomePatner> createState() => _BecomePatnerState();
}

class _BecomePatnerState extends State<BecomePatner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              // height: 400,
              width: MediaQuery.of(context).size.width * 1,
              // decoration: const BoxDecoration(),
              child: Stack(
                children: [
                  Image.asset(
                    ConstImages.becomeP,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width * 1,
                    height: 500,
                  ),
                  const Positioned(
                      top: 80,
                      left: 80,
                      child: Text(
                        "Partner Program",
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      top: 200,
                      left: 80,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 60,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  backgroundColor: ConstColor.darkblueColor,
                                ),
                                child: const Text("Preview Dashboard",
                                    style: TextStyle(
                                        color: ConstColor.white,
                                        fontSize: 20))),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.lightGreen)),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  backgroundColor: ConstColor.greenColor,
                                ),
                                child: const Text(
                                  "Shedule a Call",
                                  style: TextStyle(
                                      color: ConstColor.white, fontSize: 20),
                                )),
                          )
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    children: [
                      Text(
                        "The Odoo Official Partner label is dedicated to \ncompanies that offer quality services on Odoo.",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text(
                          "From a customer point of view, working with an Official \nPartner guarantees that the partner:",
                          style: TextStyle(
                            fontSize: 18,
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(300),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), // shadow color
                                  spreadRadius: 5, // how spread the shadow is
                                  blurRadius: 7, // how blurred the shadow is
                                  offset: const Offset(
                                      3, 4), // changes position of shadow
                                ),
                              ]),
                          child: Center(
                            child: ConstIcons.cap,
                          )),
                      const SizedBox(height: 5),
                      const Text("Is fully trained \non Odoo")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(300),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), // shadow color
                                  spreadRadius: 5, // how spread the shadow is
                                  blurRadius: 7, // how blurred the shadow is
                                  offset: const Offset(
                                      3, 4), // changes position of shadow
                                ),
                              ]),
                          child: Center(
                            child: ConstIcons.github2,
                          )),
                      const SizedBox(height: 5),
                      const Text("Has access to Odoo \nEnterprise source code")
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(300),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), // shadow color
                                  spreadRadius: 5, // how spread the shadow is
                                  blurRadius: 7, // how blurred the shadow is
                                  offset: const Offset(
                                      3, 4), // changes position of shadow
                                ),
                              ]),
                          child: Center(
                            child: ConstIcons.bug,
                          )),
                      const SizedBox(height: 5),
                      const Text("Is fully trained \non Odoo")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(300),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), // shadow color
                                  spreadRadius: 5, // how spread the shadow is
                                  blurRadius: 7, // how blurred the shadow is
                                  offset: const Offset(
                                      3, 4), // changes position of shadow
                                ),
                              ]),
                          child: Center(
                            child: ConstIcons.report,
                          )),
                      const SizedBox(height: 5),
                      const Text("Is fully trained \non Odoo")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(300),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), // shadow color
                                  spreadRadius: 5, // how spread the shadow is
                                  blurRadius: 7, // how blurred the shadow is
                                  offset: const Offset(
                                      3, 4), // changes position of shadow
                                ),
                              ]),
                          child: Center(
                            child: ConstIcons.certificate,
                          )),
                      const SizedBox(height: 5),
                      const Text("Is fully trained \non Odoo")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: ConstColor.white,
                              borderRadius: BorderRadius.circular(300),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), // shadow color
                                  spreadRadius: 5, // how spread the shadow is
                                  blurRadius: 7, // how blurred the shadow is
                                  offset: const Offset(
                                      3, 4), // changes position of shadow
                                ),
                              ]),
                          child: Center(
                            child: ConstIcons.resurch,
                          )),
                      const SizedBox(height: 5),
                      const Text("Has access to Odoo \nEnterprise source code")
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              // height: 400,
              width: MediaQuery.of(context).size.width * 1,
              // decoration: const BoxDecoration(),
              child: Stack(
                children: [
                  Image.asset(
                    ConstImages.becomeP,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width * 1,
                    height: 400,
                  ),
                  const Positioned(
                      top: 40,
                      left: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Partners Commitment",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "An Odoo official partner commits to:",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(Icons.check_circle_sharp),
                              Text(
                                "Train their staff by following Odoo training sessions",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.check_circle_sharp),
                              Text(
                                "Become a Certified Odoo Partner",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.check_circle_sharp),
                              Text(
                                "Have dedicated resources assigned to Odoo projects",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.check_circle_sharp),
                              Text(
                                "Be available for periodic meetings with Odoo account managers",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.check_circle_sharp),
                              Text(
                                "Be the 1st level of support for the client & use Odoo for the 2nd level of support",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.check_circle_sharp),
                              Text(
                                "Promote Odoo Enterprise in their region",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Benefits for a partner",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Odoo official partners will benefit from:",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_circle_sharp, size: 17),
                                Text(
                                  "Access to Odoo Enterprise GitHub repositories.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_circle_sharp, size: 17),
                                Text(
                                  "Ability to report bugs to be fixed by Odoo on behalf of their customer.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_circle_sharp, size: 17),
                                Text(
                                  "Access to an Account Manager at Odoo to discuss strategic, sales, and service",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              "issues.",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_circle_sharp, size: 17),
                                Text(
                                  "Visibility and recognition by being listed as an official partner on the Odoo",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              "Partners page.",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_circle_sharp, size: 17),
                                Text(
                                  "Up to 20% commission on Odoo Enterprise sales, depending on the partnership",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              "level.",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_circle_sharp, size: 17),
                                Text(
                                  "Get a 50% commission rate on Odoo SH platform.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_circle_sharp, size: 17),
                                Text(
                                  "Yearly upgrade training sessions after new version",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              "releases.",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_circle_sharp, size: 17),
                                Text(
                                  "Access to the Partners Portal.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check_circle_sharp, size: 17),
                                Text(
                                  "Odoo sales training session.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
