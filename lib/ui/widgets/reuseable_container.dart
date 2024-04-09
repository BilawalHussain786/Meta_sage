import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_color.dart';

class ReuseableContainer extends StatefulWidget {
  ReuseableContainer({this.url, this.height, this.width, super.key});
  String? url;
  dynamic height;
  dynamic width;
  @override
  State<ReuseableContainer> createState() => _ReuseableContainerState();
}

class _ReuseableContainerState extends State<ReuseableContainer> {
  bool containerMove = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onHover: (details) {
          setState(() {
            containerMove = true;
          });
        },
        onExit: (details) {
          setState(() {
            containerMove = false;
          });
        },
        child: Transform.translate(
          offset: containerMove ? const Offset(0, -5) : Offset.zero,
          child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2), // shadow color
                  spreadRadius: 5, // how spread the shadow is
                  blurRadius: 7, // how blurred the shadow is
                  offset: const Offset(3, 4), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(8),
              color: ConstColor.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset("${widget.url}"),
            ),
          ),
        ));
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;
        return isPortrait ? const Text("abc") : const Text("xyz");
      });
}
