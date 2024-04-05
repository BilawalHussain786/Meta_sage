import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/ui/widgets/images_list.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({super.key});

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  bool containerMove = false;
  late List<bool> itemHoverStates;

  @override
  void initState() {
    super.initState();
    // Initialize all hover states to false initially
    itemHoverStates = List.generate(photo.length, (index) => false);
  }

  // final List<double> itemHeights = [

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: photo.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5, // You can change the number of columns here
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            MouseRegion(
              onHover: (details) {
                setState(() {
                  itemHoverStates[index] = true;
                });
              },
              onExit: (details) {
                setState(() {
                  itemHoverStates[index] = false;
                });
              },
              child: Transform.translate(
                offset:
                    itemHoverStates[index] ? const Offset(0, -5) : Offset.zero,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                      color: ConstColor.whiteColor),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset("${photo[index].images}"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              photo[index].text.toString(),
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            )
          ],
        );
      },
    );
  }
}

// class TechGridView extends StatefulWidget {
//   const TechGridView({super.key});

//   @override
//   State<TechGridView> createState() => _TechGridViewState();
// }

// class _TechGridViewState extends State<TechGridView> {
//   final List<String> items = List.generate(20, (index) => "Item $index");
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
//     return GridView.builder(
//       shrinkWrap: true,
//       itemCount: tPhoto.length,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 4, // You can change the number of columns here
//         crossAxisSpacing: 2.0,
//         mainAxisSpacing: 2.0,
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
//                   height: 180,
//                   width: 180,
//                   decoration: BoxDecoration(
//                       // border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(100),
//                       color: ConstColor.lightgray),
//                   child: Padding(
//                     padding: const EdgeInsets.all(15),
//                     child: Image.asset("${tPhoto[index].images}"),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               tPhoto[index].text.toString(),
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

// class EnterpriseSoftwaregrid extends StatefulWidget {
//   const EnterpriseSoftwaregrid({super.key});

//   @override
//   State<EnterpriseSoftwaregrid> createState() => _EnterpriseSoftwaregridState();
// }

// class _EnterpriseSoftwaregridState extends State<EnterpriseSoftwaregrid> {
//   final List<String> items = List.generate(20, (index) => "Item $index");
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
//     return GridView.builder(
//       shrinkWrap: true,
//       itemCount: tPhoto.length,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 4, // You can change the number of columns here
//         crossAxisSpacing: 2.0,
//         mainAxisSpacing: 2.0,
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
//                   height: 180,
//                   width: 180,
//                   decoration: BoxDecoration(
//                       // border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(100),
//                       color: ConstColor.lightgray),
//                   child: Padding(
//                     padding: const EdgeInsets.all(15),
//                     child: Image.asset("${tPhoto[index].images}"),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               tPhoto[index].text.toString(),
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
