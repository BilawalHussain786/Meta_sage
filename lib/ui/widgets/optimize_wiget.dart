import 'package:flutter/material.dart';
import 'package:meta_sage_web/constant/const_color.dart';
import 'package:meta_sage_web/constant/const_images.dart';

class OptimizeProducts extends StatefulWidget {
  const OptimizeProducts({super.key});

  @override
  State<OptimizeProducts> createState() => _OptimizeProductsState();
}

class _OptimizeProductsState extends State<OptimizeProducts> {
  @override
  Widget build(BuildContext context) {
    dynamic size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          "Optimized for productivity",
          style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 200),
        Container(
          //width: size.width * 0.7,

          // height: size.height * 0.9,
          color: ConstColor.white,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  ConstImages.speed1,
                  fit: BoxFit.cover,
                  height: 600,
                  width: 800,
                  //width: size.width * 1,
                ),
              ),
              Positioned(
                top: -100,
                left: -180,
                child: Container(
                  decoration: BoxDecoration(
                      color: ConstColor.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      ConstImages.speed3,
                      height: 300,
                      width: 250,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                left: -180,
                child: Container(
                  decoration: BoxDecoration(
                      color: ConstColor.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      ConstImages.speed4,
                      width: 500,
                      height: 250,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                right: -150,
                child: Container(
                  decoration: BoxDecoration(
                      color: ConstColor.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      ConstImages.speed2,
                      width: 250,
                      height: 300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
