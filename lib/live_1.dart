import 'package:flutter/material.dart';

class Live_1 extends StatefulWidget {
  const Live_1({super.key});

  @override
  State<Live_1> createState() => _Live_1State();
}

class _Live_1State extends State<Live_1> {
  // ✅ Corrected list structure
  List<String> images = [
    'assets/a-1.png',
    'assets/a-2.png',
    'assets/a-3.png',
    'assets/a-4.png',
    'assets/a-5.png',
    'assets/a-6.png',
    'assets/a-7.png',
    'assets/a-8.png',
    'assets/a-9.png',
    'assets/a-10.png',
    'assets/a-11.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.builder(
        itemCount: images.length, // ✅ Use full list length
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 180,
            width: 290,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // ✅ Smooth corners
                  child: Image.asset(
                    images[index], // ✅ Correct way to access images
                    fit: BoxFit.cover,
                    width: double.infinity, 
                    height: double.infinity,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
