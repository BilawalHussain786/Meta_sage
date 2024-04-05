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
        const Text(
          "Optimized for productivity",
          style: TextStyle(
              fontSize: 80, fontWeight: FontWeight.bold, fontFamily: "Caveat"),
        ),
        const SizedBox(height: 200),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2), // shadow color
                spreadRadius: 5, // how spread the shadow is
                blurRadius: 7, // how blurred the shadow is
                offset: const Offset(3, 4), // changes position of shadow
              ),
            ],
            color: ConstColor.white,
          ),
          //width: size.width * 0.7,

          // height: size.height * 0.9,

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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2), // shadow color
                          spreadRadius: 5, // how spread the shadow is
                          blurRadius: 7, // how blurred the shadow is
                          offset:
                              const Offset(3, 4), // changes position of shadow
                        ),
                      ],
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2), // shadow color
                          spreadRadius: 5, // how spread the shadow is
                          blurRadius: 7, // how blurred the shadow is
                          offset:
                              const Offset(3, 4), // changes position of shadow
                        ),
                      ],
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2), // shadow color
                          spreadRadius: 5, // how spread the shadow is
                          blurRadius: 7, // how blurred the shadow is
                          offset:
                              const Offset(3, 4), // changes position of shadow
                        ),
                      ],
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
