import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/constant/const_images.dart';

class EnterpriseSoftware extends StatefulWidget {
  const EnterpriseSoftware({super.key});

  @override
  State<EnterpriseSoftware> createState() => _EnterpriseSoftwareState();
}

class _EnterpriseSoftwareState extends State<EnterpriseSoftware> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(200, 300),
            bottomRight: Radius.elliptical(200, 300)),
        color: ConstColor.lightgray,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Text(
              "Enterprise software \ndone right.",
              style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Caveat"),
            ),
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
                        padding: const EdgeInsets.all(50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Open source",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
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
                            const Text("MetaSage is available in two editions:",
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
                            Container(
                              height: 50,
                              decoration: const BoxDecoration(
                                gradient: ConstColor.themeGradient,
                                borderRadius:
                                    BorderRadius.zero, // Adjust as needed
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add your onPressed logic here
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                                child: const Text(
                                  "Compare Editions",
                                  style: TextStyle(
                                      color: ConstColor.white, fontSize: 20),
                                ),
                              ),
                            )
                            // SizedBox(
                            //   height: 50,
                            //   child: ElevatedButton(
                            //     onPressed: () {},
                            //     style: ElevatedButton.styleFrom(
                            //         shape: const RoundedRectangleBorder(
                            //             borderRadius: BorderRadius.zero),
                            //         backgroundColor: ConstColor.brownAccent),
                            //     child: const Text(
                            //       "Compare Editions",
                            //       style: TextStyle(
                            //           color: ConstColor.white, fontSize: 20),
                            //     ),
                            //   ),
                            // )
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
                        padding: const EdgeInsets.all(50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Highly customizable",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "Use MetaSage Studio to automate actions, design custom screens, custom reports, or web hooks.",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 20),
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
                        padding: const EdgeInsets.all(50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "40k+ community apps",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                                "Thanks to it's open source development model, MetaSage became the world's largest business apps store. Imagine getting an app for every business needs.",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                )),
                            Container(
                              height: 50,
                              decoration: const BoxDecoration(
                                gradient: ConstColor.themeGradient,
                                borderRadius:
                                    BorderRadius.zero, // Adjust as needed
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add your onPressed logic here
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                                child: const Text(
                                  "Browse Community Apps",
                                  style: TextStyle(
                                      color: ConstColor.white, fontSize: 20),
                                ),
                              ),
                            )
                            // SizedBox(
                            //   height: 50,
                            //   child: ElevatedButton(
                            //     onPressed: () {},
                            //     style: ElevatedButton.styleFrom(
                            //         shape: const RoundedRectangleBorder(
                            //             borderRadius: BorderRadius.zero),
                            //         backgroundColor: ConstColor.brownAccent),
                            //     child: const Text(
                            //       "Browse Community Apps",
                            //       style: TextStyle(
                            //           color: ConstColor.white, fontSize: 20),
                            //     ),
                            //   ),
                            // )
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
                      child: const Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "No corporate bullsh*t",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),
                            Text(
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
                        padding: const EdgeInsets.all(50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "No vendor lock-in",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
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
                            Container(
                              height: 50,
                              decoration: const BoxDecoration(
                                gradient: ConstColor.themeGradient,
                                borderRadius:
                                    BorderRadius.zero, // Adjust as needed
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add your onPressed logic here
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                                child: const Text(
                                  "Follow Us On GitHub",
                                  style: TextStyle(
                                      color: ConstColor.white, fontSize: 20),
                                ),
                              ),
                            )
                            // SizedBox(
                            //   height: 50,
                            //   child: ElevatedButton(
                            //     onPressed: () {},
                            //     style: ElevatedButton.styleFrom(
                            //         shape: const RoundedRectangleBorder(
                            //             borderRadius: BorderRadius.zero),
                            //         backgroundColor: ConstColor.brownAccent),
                            //     child: const Text(
                            //       "Follow Us On GitHub",
                            //       style: TextStyle(
                            //           color: ConstColor.white, fontSize: 20),
                            //     ),
                            //   ),
                            // )
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
                        padding: const EdgeInsets.all(50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Fair pricing",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
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
                            Container(
                              height: 50,
                              decoration: const BoxDecoration(
                                gradient: ConstColor.themeGradient,
                                borderRadius:
                                    BorderRadius.zero, // Adjust as needed
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add your onPressed logic here
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                                child: const Text(
                                  "View Pricing",
                                  style: TextStyle(
                                    color: ConstColor.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: 50,
                            //   child: ElevatedButton(
                            //     onPressed: () {},
                            //     style: ElevatedButton.styleFrom(
                            //         shape: const RoundedRectangleBorder(
                            //             borderRadius: BorderRadius.zero),
                            //         backgroundColor: ConstColor.themeGradient),
                            //     child: const Text(
                            //       "View Pricing",
                            //       style: TextStyle(
                            //           color: ConstColor.white, fontSize: 20),
                            //     ),
                            //   ),
                            // )
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
                        padding: const EdgeInsets.all(50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "A unique value proposition",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            Image.asset(
                              ConstImages.proposition,
                              width: MediaQuery.of(context).size.width * 0.3,
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
    );
  }
}
