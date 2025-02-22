import 'package:flutter/material.dart';

class Title_1 extends StatefulWidget {
  const Title_1({super.key});

  @override
  State<Title_1> createState() => _Title_1State();
}

class _Title_1State extends State<Title_1> {
  // ✅ Corrected list structure
  List<String> images = [
    'assets/p-1.png',
    'assets/p-2.png',
    'assets/p-3.png',
    'assets/p-4.png',
    'assets/p-5.png',
    'assets/p-6.png',
    'assets/p-7.png',
    'assets/p-8.png',
    'assets/p-9.png',
    'assets/p-10.png',
    'assets/p-11.png',
    'assets/p-12.png',
    'assets/p-13.png',
    'assets/p-14.png',
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
