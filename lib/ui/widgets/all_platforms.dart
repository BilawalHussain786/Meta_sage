import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/constant/const_images.dart';

class AllPlatform extends StatefulWidget {
  const AllPlatform({super.key});

  @override
  State<AllPlatform> createState() => _AllPlatformState();
}

class _AllPlatformState extends State<AllPlatform> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1005;
  bool isDesktopmid(BuildContext context) =>
      MediaQuery.of(context).size.width >= 610 &&
      MediaQuery.of(context).size.width <= 1004;
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 610;
  @override
  Widget build(BuildContext context) {
    dynamic size = MediaQuery.of(context).size;
    return Column(
      children: [
        if (isDesktop(context))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 210,
                          width: 210,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: ConstColor.lightgray),
                          child: Center(
                            child: Image.asset(
                              ConstImages.shopFloor,
                              height: 210,
                              width: 210,
                            ),
                          ),
                        ),
                        const Text("Shop Floor",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        Container(
                          height: 210,
                          width: 210,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: ConstColor.lightgray),
                          child: Center(
                            child: Image.asset(
                              ConstImages.expenses,
                              height: 210,
                              width: 210,
                            ),
                          ),
                        ),
                        const Text("Expenses",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        Container(
                          height: 210,
                          width: 210,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: ConstColor.lightgray),
                          child: Center(
                            child: Image.asset(
                              ConstImages.pointofSale,
                              height: 210,
                              width: 210,
                            ),
                          ),
                        ),
                        const Text("Point of Sale",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        Container(
                          height: 210,
                          width: 210,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: ConstColor.lightgray),
                          child: Center(
                            child: Image.asset(
                              ConstImages.ioT,
                              height: 210,
                              width: 210,
                            ),
                          ),
                        ),
                        const Text("IoT",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 210,
                            width: 210,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: ConstColor.lightgray,
                            ),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit
                                    .contain, // You can adjust the fit here
                                child: Image.asset(
                                  ConstImages.frontdesk,
                                  height: 210,
                                  width: 210,
                                ),
                              ),
                            ),
                          ),
                          const Text("Frontdesk",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 210,
                            width: 210,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: ConstColor.lightgray),
                            child: Center(
                              child: Image.asset(
                                ConstImages.inventory,
                                height: 210,
                                width: 210,
                              ),
                            ),
                          ),
                          const Text("Inventory",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 210,
                            width: 210,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: ConstColor.lightgray),
                            child: Center(
                              child: Image.asset(
                                ConstImages.kiosk,
                                height: 210,
                                width: 210,
                              ),
                            ),
                          ),
                          const Text("Kiosk",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        if (isDesktopmid(context))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.25,
                          // width: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: ConstColor.lightgray),
                          child: Center(
                            child: Image.asset(
                              ConstImages.shopFloor,
                              fit: BoxFit.cover,
                              height: 210,
                              width: 210,
                              // height: MediaQuery.of(context).size.height * 0.25,
                              // width: MediaQuery.of(context).size.height * 0.25,
                            ),
                          ),
                        ),
                        const Text("Shop Floor",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.25,
                          // width: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: ConstColor.lightgray),
                          child: Center(
                            child: Image.asset(
                              ConstImages.expenses,
                              fit: BoxFit.cover,
                              height: 210,
                              width: 210,
                              // height: MediaQuery.of(context).size.height * 0.25,
                              // width: MediaQuery.of(context).size.height * 0.25,
                            ),
                          ),
                        ),
                        const Text("Expenses",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.25,
                          // width: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: ConstColor.lightgray),
                          child: Center(
                            child: Image.asset(
                              ConstImages.pointofSale,
                              fit: BoxFit.cover,
                              height: 210,
                              width: 210,
                              // height: MediaQuery.of(context).size.height * 0.25,
                              // width: MediaQuery.of(context).size.height * 0.25,
                            ),
                          ),
                        ),
                        const Text("Point of Sale",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.25,
                          // width: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: ConstColor.lightgray),
                          child: Center(
                            child: Image.asset(
                              ConstImages.ioT,
                              height: 210,
                              width: 210,
                              // height: MediaQuery.of(context).size.height * 0.25,
                              // width: MediaQuery.of(context).size.height * 0.25,
                            ),
                          ),
                        ),
                        const Text("IoT",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.25,
                          // width: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(300),
                            color: ConstColor.lightgray,
                          ),
                          child: Center(
                            child: FittedBox(
                              fit:
                                  BoxFit.contain, // You can adjust the fit here
                              child: Image.asset(
                                ConstImages.frontdesk,
                                fit: BoxFit.cover,
                                height: 210,
                                width: 210,
                                // height:
                                //     MediaQuery.of(context).size.height * 0.25,
                                // width:
                                //     MediaQuery.of(context).size.height * 0.25,
                              ),
                            ),
                          ),
                        ),
                        const Text("Frontdesk",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.25,
                          // width: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: ConstColor.lightgray),
                          child: Center(
                            child: Image.asset(
                              ConstImages.inventory,
                              fit: BoxFit.cover,
                              height: 210,
                              width: 210,
                              // height: MediaQuery.of(context).size.height * 0.25,
                              // width: MediaQuery.of(context).size.height * 0.25,
                            ),
                          ),
                        ),
                        const Text("Inventory",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 210,
                      width: 210,
                      // height: MediaQuery.of(context).size.height * 0.25,
                      // width: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: ConstColor.lightgray),
                      child: Center(
                        child: Image.asset(
                          ConstImages.kiosk,
                          fit: BoxFit.cover,
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.25,
                          // width: MediaQuery.of(context).size.height * 0.25,
                        ),
                      ),
                    ),
                    const Text("Kiosk",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        if (isMobile(context))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: 210,
                      width: 210,
                      // height: MediaQuery.of(context).size.height * 0.3,
                      // width: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: ConstColor.lightgray),
                      child: Center(
                        child: Image.asset(
                          ConstImages.shopFloor,
                          fit: BoxFit.cover,
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.3,
                          // width: MediaQuery.of(context).size.height * 0.3,
                        ),
                      ),
                    ),
                    const Text("Shop Floor",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      height: 210,
                      width: 210,
                      // height: MediaQuery.of(context).size.height * 0.3,
                      // width: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: ConstColor.lightgray),
                      child: Center(
                        child: Image.asset(
                          ConstImages.expenses,
                          fit: BoxFit.cover,
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.3,
                          // width: MediaQuery.of(context).size.height * 0.3,
                        ),
                      ),
                    ),
                    const Text("Expenses",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      height: 210,
                      width: 210,
                      // height: MediaQuery.of(context).size.height * 0.3,
                      // width: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: ConstColor.lightgray),
                      child: Center(
                        child: Image.asset(
                          ConstImages.pointofSale,
                          fit: BoxFit.cover,
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.3,
                          // width: MediaQuery.of(context).size.height * 0.3,
                        ),
                      ),
                    ),
                    const Text("Point of Sale",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      height: 210,
                      width: 210,
                      // height: MediaQuery.of(context).size.height * 0.3,
                      // width: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: ConstColor.lightgray),
                      child: Center(
                        child: Image.asset(
                          ConstImages.ioT,
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.3,
                          // width: MediaQuery.of(context).size.height * 0.3,
                        ),
                      ),
                    ),
                    const Text("IoT",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      height: 210,
                      width: 210,
                      // height: MediaQuery.of(context).size.height * 0.3,
                      // width: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: ConstColor.lightgray,
                      ),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.contain, // You can adjust the fit here
                          child: Image.asset(
                            ConstImages.frontdesk,
                            fit: BoxFit.cover,
                            height: 210,
                            width: 210,
                            // height: MediaQuery.of(context).size.height * 0.3,
                            // width: MediaQuery.of(context).size.height * 0.3,
                          ),
                        ),
                      ),
                    ),
                    const Text("Frontdesk",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      height: 210,
                      width: 210,
                      // height: MediaQuery.of(context).size.height * 0.3,
                      // width: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: ConstColor.lightgray),
                      child: Center(
                        child: Image.asset(
                          ConstImages.inventory,
                          fit: BoxFit.cover,
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.3,
                          // width: MediaQuery.of(context).size.height * 0.3,
                        ),
                      ),
                    ),
                    const Text("Inventory",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 210,
                      width: 210,
                      // height: MediaQuery.of(context).size.height * 0.3,
                      // width: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: ConstColor.lightgray),
                      child: Center(
                        child: Image.asset(
                          ConstImages.kiosk,
                          fit: BoxFit.cover,
                          height: 210,
                          width: 210,
                          // height: MediaQuery.of(context).size.height * 0.3,
                          // width: MediaQuery.of(context).size.height * 0.3,
                        ),
                      ),
                    ),
                    const Text("Kiosk",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        const SizedBox(height: 30),
      ],
    );
  }
}
