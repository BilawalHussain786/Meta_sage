import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/constant/const_images.dart';
import 'package:meta_sage_web/ui/screen/app_screen.dart';
import 'package:meta_sage_web/ui/screen/community_screen.dart';
import 'package:meta_sage_web/ui/screen/home_screen.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  String _selectedTab = ""; // Default selected tab
  double _sizedBoxHeight() {
    // If _selectedTab is either 'App' or 'Community', return 500; otherwise, return 0.
    return (_selectedTab == 'App' || _selectedTab == 'Community') ? 500 : 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        ConstImages.metaSage,
                        height: 100,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      _buildTab('App', Icons.arrow_downward_sharp),
                      SizedBox(width: 30),
                      _buildTab('Community', Icons.arrow_downward_sharp),
                      SizedBox(width: 30),
                      Text(
                        'Pricing',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 30),
                      Text('Contact',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: [
                      Text('SignUp',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      SizedBox(width: 30),
                      // ElevatedButton(
                      //   style: ElevatedButton.styleFrom(
                      //     backgroundColor: ConstColor.brownColor,
                      //   ),
                      //   onPressed: () {
                      //     Navigator.push(context,
                      //         MaterialPageRoute(builder: (_) {
                      //       return const HomeScreen();
                      //     }));
                      //   },
                      //   child: Text(
                      //     "Try It Free",
                      //     style: TextStyle(color: ConstColor.white),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _sizedBoxHeight(),
              child: Stack(
                children: [
                  Visibility(
                    visible: _selectedTab == 'App',
                    child: AppsList(),
                  ),
                  Visibility(
                    visible: _selectedTab == 'Community',
                    child: CommunityList(),
                  ),
                  // Add more Visibility widgets for other tabs
                ],
              ),
            ),
            HomeScreen(),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String tabName, IconData iconData) {
    bool isSelected = _selectedTab == tabName; // Check if this tab is selected
    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle the selection of the tab
          _selectedTab = isSelected ? "" : tabName;
        });
      },
      child: Row(
        children: [
          Text(
            tabName,
            style: TextStyle(
                color: isSelected ? ConstColor.brownColor : null,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 5), // Add spacing between icon and text
          Icon(isSelected ? Icons.close : iconData,
              size: 15,
              color: isSelected
                  ? ConstColor.brownColor
                  : null), // Change icon based on selection
        ],
      ),
    );
  }
}
