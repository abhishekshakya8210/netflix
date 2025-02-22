import 'package:flutter/material.dart';

class Title_4 extends StatefulWidget {
  const Title_4({super.key});

  @override
  State<Title_4> createState() => _Title_4State();
}

class _Title_4State extends State<Title_4> {
  // ✅ Corrected list structure
  List<String> images = [
    'assets/g-1.png',
    'assets/g-2.png',
    'assets/g-3.png',
    'assets/g-4.png',
    'assets/g-5.png',
    'assets/g-6.png',
    'assets/g-7.png',
    'assets/g-8.png',
    'assets/g-9.png',
    'assets/g-10.png',
    'assets/g-11.png',
   
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
