import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_color.dart';

class HoverTextItem extends StatefulWidget {
  final String? title;

  const HoverTextItem({super.key, this.title});

  @override
  _HoverTextItemState createState() => _HoverTextItemState();
}

class _HoverTextItemState extends State<HoverTextItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: Row(
        children: [
          Text(
            widget.title ?? '',
            style: TextStyle(
              color: isHovered ? ConstColor.brownColor : Colors.black,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class HoverTextfooter extends StatefulWidget {
  final String? title;

  const HoverTextfooter({super.key, this.title});

  @override
  _HoverTextfooterState createState() => _HoverTextfooterState();
}

class _HoverTextfooterState extends State<HoverTextfooter> {
  bool Hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          Hovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          Hovered = false;
        });
      },
      child: Row(
        children: [
          Text(
            widget.title ?? '',
            style: TextStyle(
              color: Hovered ? ConstColor.white : ConstColor.greyColor,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
