import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_images.dart';
import 'package:meta_sage_web/ui/widgets/reuseable_container.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              ReuseableContainer(
                url: ConstImages.finance,
              ),
              const SizedBox(height: 10),
              const Text(
                "Finance",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.crm,
              ),
              const SizedBox(height: 10),
              const Text(
                "CRM",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.rental,
              ),
              const SizedBox(height: 10),
              const Text(
                "Rental",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.documents,
              ),
              const SizedBox(height: 10),
              const Text(
                "Document",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.attandence,
              ),
              const SizedBox(height: 10),
              const Text(
                "Attandence",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.fieldforce,
              ),
              const SizedBox(height: 10),
              const Text(
                "Field Force",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.socialmarketing,
              ),
              const SizedBox(height: 10),
              const Text(
                "Social Marketing",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.purchase,
              ),
              const SizedBox(height: 10),
              const Text(
                "Purchase",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.manufacturing,
              ),
              const SizedBox(height: 10),
              const Text(
                "Manufacturing",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.humanResource,
              ),
              const SizedBox(height: 10),
              const Text(
                "Human Resource",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ReuseableContainer(
                url: ConstImages.sign,
              ),
              const SizedBox(height: 10),
              const Text(
                "Digital Sign",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.subscription,
              ),
              const SizedBox(height: 10),
              const Text(
                "Subscription",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.pos,
              ),
              const SizedBox(height: 10),
              const Text(
                "Point of Sales ",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.projects,
              ),
              const SizedBox(height: 10),
              const Text(
                "Project",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.planing,
              ),
              const SizedBox(height: 10),
              const Text(
                "Planing",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.helpdesk,
              ),
              const SizedBox(height: 10),
              const Text(
                "Help Desk",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.emailmarketing,
              ),
              const SizedBox(height: 10),
              const Text(
                "Email Marketing",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.inventoryIcon,
              ),
              const SizedBox(height: 10),
              const Text(
                "Inventory",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.sales,
              ),
              const SizedBox(height: 10),
              const Text(
                "Sale",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              ReuseableContainer(
                url: ConstImages.dashboard,
              ),
              const SizedBox(height: 10),
              const Text(
                "Dashboard",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
