// import 'package:flutter/material.dart';
// import 'package:meta_sage_web/constant/const_color.dart';
// import 'package:meta_sage_web/ui/widgets/images_list.dart';

// class MyGridView extends StatefulWidget {
//   const MyGridView({super.key});

//   @override
//   State<MyGridView> createState() => _MyGridViewState();
// }

// class _MyGridViewState extends State<MyGridView> {
//   bool containerMove = false;
//   late List<bool> itemHoverStates;

//   @override
//   void initState() {
//     super.initState();
//     // Initialize all hover states to false initially
//     itemHoverStates = List.generate(photo.length, (index) => false);
//   }

//   // final List<double> itemHeights = [

//   @override
//   Widget build(BuildContext context) {
//     bool isDesktop(BuildContext context) =>
//         MediaQuery.of(context).size.width >= 1100;
//     bool isDesktopmid(BuildContext context) =>
//         MediaQuery.of(context).size.width >= 740 &&
//         MediaQuery.of(context).size.width <= 1100;
//     bool isMobile(BuildContext context) =>
//         MediaQuery.of(context).size.width >= 631 &&
//         MediaQuery.of(context).size.width <= 739;
//     bool isSmallMobile(BuildContext context) =>
//         MediaQuery.of(context).size.width <= 630;

//     int getColumnCount(BuildContext context) {
//       if (isDesktop(context)) {
//         return 5; // Show 5 columns for desktop
//       } else if (isDesktopmid(context)) {
//         return 4; // Show 4 columns for medium-sized screens
//       } else if (isMobile(context)) {
//         return 3; // Show 3 columns for mobile screens
//       } else if (isSmallMobile(context)) {
//         return 2; // Show 3 columns for mobile screens
//       } else {
//         return 1; // Default to 2 columns
//       }
//     }

//     return GridView.builder(
//       shrinkWrap: true,
//       itemCount: photo.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: getColumnCount(
//             context), // You can change the number of columns here
//         //crossAxisSpacing: 0.0,
//         mainAxisSpacing: 1.0,
//       ),
//       itemBuilder: (context, index) {
//         return Column(
//           children: [
//             MouseRegion(
//               onHover: (details) {
//                 setState(() {
//                   itemHoverStates[index] = true;
//                 });
//               },
//               onExit: (details) {
//                 setState(() {
//                   itemHoverStates[index] = false;
//                 });
//               },
//               child: Transform.translate(
//                 offset:
//                     itemHoverStates[index] ? const Offset(0, -5) : Offset.zero,
//                 child: Container(
//                   width: 80,
//                   height: 80,
//                   decoration: BoxDecoration(
//                       // border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(8.0),
//                       color: ConstColor.whiteColor),
//                   child: Padding(
//                     padding: const EdgeInsets.all(15),
//                     child: Image.asset("${photo[index].images}"),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               photo[index].text.toString(),
//               style: const TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.black),
//             )
//           ],
//         );
//       },
//     );
//   }
// }

// // class TechGridView extends StatefulWidget {
// //   const TechGridView({super.key});

// //   @override
// //   State<TechGridView> createState() => _TechGridViewState();
// // }

// // class _TechGridViewState extends State<TechGridView> {
// //   final List<String> items = List.generate(20, (index) => "Item $index");
// //   bool containerMove = false;
// //   late List<bool> itemHoverStates;

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Initialize all hover states to false initially
// //     itemHoverStates = List.generate(photo.length, (index) => false);
// //   }

// //   // final List<double> itemHeights = [
// //   @override
// //   Widget build(BuildContext context) {
// //     return GridView.builder(
// //       shrinkWrap: true,
// //       itemCount: tPhoto.length,
// //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //         crossAxisCount: 4, // You can change the number of columns here
// //         crossAxisSpacing: 2.0,
// //         mainAxisSpacing: 2.0,
// //       ),
// //       itemBuilder: (context, index) {
// //         return Column(
// //           children: [
// //             MouseRegion(
// //               onHover: (details) {
// //                 setState(() {
// //                   itemHoverStates[index] = true;
// //                 });
// //               },
// //               onExit: (details) {
// //                 setState(() {
// //                   itemHoverStates[index] = false;
// //                 });
// //               },
// //               child: Transform.translate(
// //                 offset:
// //                     itemHoverStates[index] ? const Offset(0, -5) : Offset.zero,
// //                 child: Container(
// //                   height: 180,
// //                   width: 180,
// //                   decoration: BoxDecoration(
// //                       // border: Border.all(color: Colors.grey),
// //                       borderRadius: BorderRadius.circular(100),
// //                       color: ConstColor.lightgray),
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(15),
// //                     child: Image.asset("${tPhoto[index].images}"),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 10),
// //             Text(
// //               tPhoto[index].text.toString(),
// //               style: const TextStyle(
// //                   fontSize: 14,
// //                   fontWeight: FontWeight.w600,
// //                   color: Colors.black),
// //             )
// //           ],
// //         );
// //       },
// //     );
// //   }
// // }

// // class EnterpriseSoftwaregrid extends StatefulWidget {
// //   const EnterpriseSoftwaregrid({super.key});

// //   @override
// //   State<EnterpriseSoftwaregrid> createState() => _EnterpriseSoftwaregridState();
// // }

// // class _EnterpriseSoftwaregridState extends State<EnterpriseSoftwaregrid> {
// //   final List<String> items = List.generate(20, (index) => "Item $index");
// //   bool containerMove = false;
// //   late List<bool> itemHoverStates;

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Initialize all hover states to false initially
// //     itemHoverStates = List.generate(photo.length, (index) => false);
// //   }

// //   // final List<double> itemHeights = [
// //   @override
// //   Widget build(BuildContext context) {
// //     return GridView.builder(
// //       shrinkWrap: true,
// //       itemCount: tPhoto.length,
// //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //         crossAxisCount: 4, // You can change the number of columns here
// //         crossAxisSpacing: 2.0,
// //         mainAxisSpacing: 2.0,
// //       ),
// //       itemBuilder: (context, index) {
// //         return Column(
// //           children: [
// //             MouseRegion(
// //               onHover: (details) {
// //                 setState(() {
// //                   itemHoverStates[index] = true;
// //                 });
// //               },
// //               onExit: (details) {
// //                 setState(() {
// //                   itemHoverStates[index] = false;
// //                 });
// //               },
// //               child: Transform.translate(
// //                 offset:
// //                     itemHoverStates[index] ? const Offset(0, -5) : Offset.zero,
// //                 child: Container(
// //                   height: 180,
// //                   width: 180,
// //                   decoration: BoxDecoration(
// //                       // border: Border.all(color: Colors.grey),
// //                       borderRadius: BorderRadius.circular(100),
// //                       color: ConstColor.lightgray),
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(15),
// //                     child: Image.asset("${tPhoto[index].images}"),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 10),
// //             Text(
// //               tPhoto[index].text.toString(),
// //               style: const TextStyle(
// //                   fontSize: 14,
// //                   fontWeight: FontWeight.w600,
// //                   color: Colors.black),
// //             )
// //           ],
// //         );
// //       },
// //     );
// //   }
// // }
