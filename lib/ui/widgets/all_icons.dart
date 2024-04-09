import 'package:flutter/material.dart';
import 'package:meta_sage_web/ui/widgets/reuseable_container.dart';

import '../../constant/const_images.dart';

class AllIcons extends StatefulWidget {
  const AllIcons({super.key});

  @override
  State<AllIcons> createState() => _AllIconsState();
}

class _AllIconsState extends State<AllIcons> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1001;
  bool isDesktopmid(BuildContext context) =>
      MediaQuery.of(context).size.width >= 579 &&
      MediaQuery.of(context).size.width <= 1000;
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width >= 330 &&
      MediaQuery.of(context).size.width <= 578;
  bool isSmallMobile(BuildContext context) =>
      MediaQuery.of(context).size.width >= 186 &&
      MediaQuery.of(context).size.width <= 329;
  bool isExSmallMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 185;
  @override
  Widget build(BuildContext context) {
    dynamic size = MediaQuery.of(context).size;
    return Column(
      children: [
        if (isDesktop(context))
          Padding(
            padding: const EdgeInsets.only(right: 150, left: 150, top: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.finance,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Finance",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.pos,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Point of Sales ",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.fieldforce,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Field Force",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.inventoryIcon,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Inventory",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.sign,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Digital Sign",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.documents,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Document",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.helpdesk,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Help Desk",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.manufacturing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Manufacturing",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.crm,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "CRM",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.projects,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Project",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.socialmarketing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Social Marketing",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.sales,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Sale",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.subscription,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Subscription",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.attandence,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Attandence",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.emailmarketing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Email Marketing",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.humanResource,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Human Resource",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.rental,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Rental",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.planing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Planing",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.purchase,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Purchase",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 100,
                      width: 100,
                      url: ConstImages.dashboard,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Dashboard",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        if (isDesktopmid(context))
          Padding(
            padding: const EdgeInsets.only(right: 80, left: 80, top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.finance,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Finance",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.rental,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Rental",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.attandence,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Attandence",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.socialmarketing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Social Marketing",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.manufacturing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Manufacturing",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.sign,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Digital Sign",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.pos,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Point of Sales ",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.planing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Planing",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.emailmarketing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Email Marketing",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.sales,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Sale",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.crm,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "CRM",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.documents,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Document",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.fieldforce,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Field Force",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.purchase,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Purchase",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.humanResource,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Human Resource",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.subscription,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Subscription",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.projects,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Project",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.helpdesk,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Help Desk",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.inventoryIcon,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Inventory",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: 90,
                      width: 90,
                      url: ConstImages.dashboard,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Dashboard",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        if (isMobile(context))
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 80),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.finance,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Finance",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.subscription,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Subscription",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.documents,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Document",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.planing,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Planing",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.socialmarketing,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Social Marketing",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.inventoryIcon,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Inventory",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.sign,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Digital Sign",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.rental,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Rental",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.projects,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Project",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.fieldforce,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Field Force",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.emailmarketing,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Email Marketing",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.manufacturing,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Manufacturing",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.crm,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "CRM",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.pos,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Point of Sales ",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.attandence,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Attandence",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.helpdesk,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Help Desk",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.purchase,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Purchase",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.sales,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Sale",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.humanResource,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Human Resource",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    //const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ReuseableContainer(
                          height: size.height * 0.16,
                          width: size.height * 0.17,
                          url: ConstImages.dashboard,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Dashboard",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        if (isSmallMobile(context))
          Padding(
            padding: const EdgeInsets.only(right: 5, left: 5, top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.finance,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Finance",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.crm,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "CRM",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.rental,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Rental",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.documents,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Document",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.attandence,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Attandence",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.fieldforce,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Field Force",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.socialmarketing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Social Marketing",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.purchase,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Purchase",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.manufacturing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Manufacturing",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.humanResource,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Human Resource",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.sign,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Digital Sign",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.subscription,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Subscription",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.pos,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Point of Sales ",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.projects,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Project",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.planing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Planing",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.helpdesk,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Help Desk",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.emailmarketing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Email Marketing",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.inventoryIcon,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Inventory",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.sales,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Sale",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.dashboard,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Dashboard",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        if (isExSmallMobile(context))
          Padding(
            padding: const EdgeInsets.only(right: 5, left: 5, top: 80),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.finance,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Finance",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.crm,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "CRM",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.rental,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Rental",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.documents,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Document",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.attandence,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Attandence",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.fieldforce,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Field Force",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.socialmarketing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Social Marketing",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.purchase,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Purchase",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.manufacturing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Manufacturing",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.humanResource,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Human Resource",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.sign,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Digital Sign",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.subscription,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Subscription",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.pos,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Point of Sales ",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.projects,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Project",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.planing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Planing",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.helpdesk,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Help Desk",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.emailmarketing,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Email Marketing",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.inventoryIcon,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Inventory",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.sales,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Sale",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    ReuseableContainer(
                      height: size.height * 0.12,
                      width: size.height * 0.13,
                      url: ConstImages.dashboard,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Dashboard",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
