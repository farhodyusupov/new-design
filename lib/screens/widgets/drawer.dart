import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawer extends StatelessWidget {
  final Size size;

  const   CustomDrawer({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Container(
          width: size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(5),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 24),
                  child: Row(
                    children: const [
                      Text(
                        "Быстрый доступ",
                        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 18),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset("assets/images/beeline.png"),
                          ),
                          const Text(
                            "Beeline",
                            style: TextStyle(color:Colors.cyanAccent, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: SvgPicture.asset("assets/icons/pin_alt_fill.svg"),
                          ),
                          const Text(
                            "Филиалы и банкоматы",
                            style: TextStyle(color: Colors.cyan, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset("assets/images/beeline.png"),
                          ),
                          const Text(
                            "Beeline",
                            style: TextStyle(color: Colors.cyanAccent, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.5),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: SvgPicture.asset("assets/icons/pin_alt_fill.svg"),
                          ),
                          const Text(
                            "Филиалы и банкоматы",
                            style: TextStyle(color: Colors.cyan, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
