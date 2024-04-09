import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/ui/widgets/footer.dart';
import 'package:meta_sage_web/ui/widgets/resuable_rich_text.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

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
                  "MetaSage Privacy Policy",
                  style: TextStyle(
                      color: ConstColor.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "When you use our app/Website, you trust us with your information. We are committed to keeping that trust. That starts with helping you understand our privacy practices.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Scope",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'This policy applies to any users of the services of METASAGE Website / Apps or its affiliates anywhere in the world, and to anyone else who contacts METASAGE Website / App or otherwise submits information to METASAGE Website / App, unless noted below.  ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text:
                              'This includes those who use METASAGE App or its affiliates’ services to:',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget(
                      title: "• ",
                      title1:
                          "Collection of data you providing at the time of registration",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget(
                      title: "• ",
                      title1:
                          "Any other user of METASAGE services (including apps, websites and API),and anyone else who contacts METASAGE Website / App or otherwise submits information to METASAGE.",
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "The Information We Collect",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "META SAGE Website / App collects the following categories of information:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget2(
                      title: "1. ",
                      title1: "Information you provide",
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "This includes information submitted when you:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget(
                      title: "• ",
                      title1:
                          "Create or update your METASAGE App account, which depending on your location and the METASAGE App’s services you use may include your name, email, phone number, login name and password, address, birth date, and photo (if required)",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget(
                      title: "• ",
                      title1:
                          "Request services through an METASAGE App or website",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget(
                      title: "• ",
                      title1:
                          "Contact METASAGE App, including for customer support",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget(
                      title: "• ",
                      title1:
                          "Enable features that require META SAGE App’s access to your address book or calendar (if required)",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget2(
                      title: "2. ",
                      title1: "Information created when you use our services",
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "This includes:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget2(
                      title: "• ",
                      title1: "Location Information",
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Depending on the METASAGE App services that you use, and your app settings or device permissions, METASAGE App may collect your precise or approximate location information as determined through data such as GPS, IP address and WiFi.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: RichTextwidget(
                        title: "• ",
                        title1:
                            "If you are a user, we collect your location if required to display some relevant information according your current locations i.e Branch location or your tracking to owner or employee and any other."),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: RichTextwidget(
                        title: "• ",
                        title1:
                            "User may use the META SAGE App without enabling META SAGE App to collect their location information. However, this may affect the functionality available on your META SAGE App. For example, if you do not enable META SAGE App to collect your location information, your last location will be displayed to relevant user."),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget2(
                        title: "• ", title1: "Transaction Information"),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "We collect transaction details if required in META SAGE App’s or otherwise there is no transaction information required.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget2(
                        title: "• ",
                        title1: "Usage and Preference Information"),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "We collect information about how you interact with our services, preferences expressed, and settings chosen. In some cases we do this through the use of cookies, pixel tags, and similar technologies that create and maintain unique identifiers.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget2(
                        title: "• ", title1: "Device Information"),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "We may collect information about the devices you use to access our services, including the hardware models, operating systems and versions, software, file names and versions, preferred languages, unique device identifiers, advertising identifiers, serial numbers, device motion information, and mobile network information.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget2(
                        title: "• ", title1: "Calls and text messages"),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "In some METASAGE App’s we enable users to call or text each other through the METASAGE App apps. For example, we enable user to chat with other user or call through its dialer if call option is required. META SAGE App may also use this information for customer support services (including to resolve disputes between users), for safety and security purposes, and for analytics.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget2(
                        title: "• ", title1: "Information from other sources"),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "These may include:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget(
                        title: "• ",
                        title1:
                            "META SAGE App providing feedback, such as ratings or compliments"),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget(
                        title: "• ", title1: "Publicly available sources"),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichTextwidget(
                        title: "• ", title1: "Marketing service providers"),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "META SAGE App may combine the information collected from these sources with other information in its possession.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Updates to This Policy",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "We may occasionally update this policy. If we make significant changes, we will notify you of the changes through the META SAGE App or through others means, such as email. To the extent permitted under applicable law, by using our services after such notice, you consent to our updates to this policy.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "We encourage you to periodically review this policy for the latest information on our privacy practices. We will also make prior versions of our privacy policies available for review.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
