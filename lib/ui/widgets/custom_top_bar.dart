// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:meta_sage_web/constant/const_color.dart';
// import 'package:meta_sage_web/constant/const_images.dart';
// import 'package:meta_sage_web/ui/screen/app_screen.dart';
// import 'package:meta_sage_web/ui/screen/community_screen.dart';
// import 'package:meta_sage_web/ui/screen/home_screen.dart';

// class TopBar extends StatefulWidget {
//   const TopBar({super.key});

//   @override
//   State<TopBar> createState() => _TopBarState();
// }

// class _TopBarState extends State<TopBar> {
//   String _selectedTab = ""; // Default selected tab
//   double _sizedBoxHeight() {
//     // If _selectedTab is either 'App' or 'Community', return 500; otherwise, return 0.
//     return (_selectedTab == 'Features' || _selectedTab == 'Community')
//         ? 500
//         : 0;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ConstColor.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 90),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Row(
//                     children: [
//                       Image.asset(
//                         ConstImages.metaSage,
//                         height: 100,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * 0.5,
//                     child: Row(
//                       children: [
//                         _buildTab('Features', Icons.arrow_downward_sharp),
//                         const SizedBox(width: 30),
//                         _buildTab('Community', Icons.arrow_downward_sharp),
//                         const SizedBox(width: 30),
//                         // const Text(
//                         //   'Pricing',
//                         //   style: TextStyle(
//                         //       fontSize: 14, fontWeight: FontWeight.bold),
//                         // ),
//                         const SizedBox(width: 30),
//                         const Text('Contact',
//                             style: TextStyle(
//                                 fontSize: 14, fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                   ),
//                   // const Row(
//                   //   children: [
//                   //     Text('SignUp',
//                   //         style: TextStyle(
//                   //             fontSize: 14, fontWeight: FontWeight.bold)),
//                   //     SizedBox(width: 30),
//                   // ElevatedButton(
//                   //   style: ElevatedButton.styleFrom(
//                   //     backgroundColor: ConstColor.brownColor,
//                   //   ),
//                   //   onPressed: () {
//                   //     Navigator.push(context,
//                   //         MaterialPageRoute(builder: (_) {
//                   //       return const HomeScreen();
//                   //     }));
//                   //   },
//                   //   child: Text(
//                   //     "Try It Free",
//                   //     style: TextStyle(color: ConstColor.white),
//                   //   ),
//                   // ),
//                   //   ],
//                   // ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: _sizedBoxHeight(),
//               child: Stack(
//                 children: [
//                   Visibility(
//                     visible: _selectedTab == 'Features',
//                     child: const AppsList(),
//                   ),
//                   Visibility(
//                     visible: _selectedTab == 'Community',
//                     child: const CommunityList(),
//                   ),
//                   // Add more Visibility widgets for other tabs
//                 ],
//               ),
//             ),
//             const HomeScreen(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTab(String tabName, IconData iconData) {
//     bool isSelected = _selectedTab == tabName; // Check if this tab is selected
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           // Toggle the selection of the tab
//           _selectedTab = isSelected ? "" : tabName;
//         });
//       },
//       child: Row(
//         children: [
//           Text(
//             tabName,
//             style: TextStyle(
//                 color: isSelected ? ConstColor.brownColor : null,
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(width: 5), // Add spacing between icon and text
//           Icon(isSelected ? Icons.close : iconData,
//               size: 15,
//               color: isSelected
//                   ? ConstColor.brownColor
//                   : null), // Change icon based on selection
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/constant/const_images.dart';
import 'package:meta_sage_web/ui/screen/app_screen.dart';
import 'package:meta_sage_web/ui/screen/community_screen.dart';
import 'package:meta_sage_web/ui/screen/drawer_screen.dart';
import 'package:meta_sage_web/ui/screen/find_a_patner.dart';
import 'package:meta_sage_web/ui/screen/home_screen.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  String _selectedTab = '';
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 764;
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 764;
  void _toggleScreenVisibility(String tabName) {
    setState(() {
      _selectedTab = _selectedTab == tabName ? '' : tabName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: HomeScreen(),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 800),
              curve: Curves.ease,
              top: _selectedTab == 'Features'
                  ? 80
                  : -MediaQuery.of(context).size.height,
              left: 0,
              right: 0,
              height: 520,
              // height: MediaQuery.of(context).size.height,
              child: Container(
                // color: Colors.blue,
                alignment: Alignment.center,
                child: const AppsList(),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 800),
              curve: Curves.ease,
              top: _selectedTab == 'Community'
                  ? 80
                  : -MediaQuery.of(context).size.height,
              left: 0,
              right: 0,
              height: 400,
              //  height: MediaQuery.of(context).size.height,
              child: Container(
                // color: Colors.green,
                alignment: Alignment.center,
                child: const CommunityList(),
              ),
            ),

            // Tab bar
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        ConstImages.metaSage,
                        height: 80,
                      ),
                    ],
                  ),
                  if (isDesktop(context))
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Row(
                        children: [
                          _buildTab('Features', Icons.arrow_downward_sharp),
                          const SizedBox(width: 30),
                          _buildTab('Community', Icons.arrow_downward_sharp),
                          const SizedBox(width: 30),
                          // const Text(
                          //   'Pricing',
                          //   style: TextStyle(
                          //       fontSize: 14, fontWeight: FontWeight.bold),
                          // ),
                          const SizedBox(width: 30),
                          const Text('Contact',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  if (isMobile(context))
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return const DrawerScreen();
                              }));
                            },
                            icon: const Icon(Icons.density_medium))
                      ],
                    )
                  //Add more tabs as needed
                ],
              ),
            ),
            //const Positioned(top: 100, left: 0, right: 0, child: HomeScreen())
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String tabName, IconData iconData) {
    final isSelected = _selectedTab == tabName;

    return GestureDetector(
      onTap: () {
        _toggleScreenVisibility(tabName);
      },
      child: Row(
        children: [
          Text(
            tabName,
            style: TextStyle(
              color: isSelected ? ConstColor.brownColor : null,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 5),
          Icon(isSelected ? Icons.close : iconData,
              size: 15, color: isSelected ? ConstColor.brownColor : null),
        ],
      ),
    );
  }
}
