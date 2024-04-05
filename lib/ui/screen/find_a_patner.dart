import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/constant/const_icons.dart';
import 'package:meta_sage_web/ui/widgets/footer.dart';
import 'package:meta_sage_web/ui/widgets/images_list.dart';

class FindaPartner extends StatefulWidget {
  const FindaPartner({super.key});

  @override
  State<FindaPartner> createState() => _FindaPartnerState();
}

class _FindaPartnerState extends State<FindaPartner> {
  late List<bool> itemHoverStates;
  @override
  void initState() {
    super.initState();
    // Initialize all hover states to false initially
    itemHoverStates = List.generate(photo.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: ConstColor.themeGradient,
                // borderRadius:
                //     BorderRadius.zero, // Adjust as needed
              ),
              height: 200,
              width: MediaQuery.of(context).size.width * 1,
              child: const Padding(
                padding: EdgeInsets.only(top: 40, left: 70),
                child: Text(
                  "MetaSage Partner",
                  style: TextStyle(
                      color: ConstColor.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 30),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: patnerData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      4, // You can change the number of columns here
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 0.0,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Transform.translate(
                        offset: itemHoverStates[index]
                            ? const Offset(0, -5)
                            : Offset.zero,
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            // border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                            // color: ConstColor.whiteColor
                          ),
                          child: Image.asset("${patnerData[index].images}"),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 5),
                          Text(
                            patnerData[index].phone.toString(),
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ConstIcons.links,
                          const SizedBox(width: 5),
                          Text(
                            patnerData[index].linkweb.toString(),
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.email),
                          const SizedBox(width: 5),
                          Text(
                            patnerData[index].email.toString(),
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  );
                },
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
