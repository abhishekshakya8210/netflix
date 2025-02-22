import 'package:flutter/material.dart';

class Page_4 extends StatefulWidget {
  const Page_4({super.key});

  @override
  State<Page_4> createState() => _Page_4State();
}

class _Page_4State extends State<Page_4> {
  // ✅ Corrected list structure
  List<String> images = [
    'assets/c-1.png',
    'assets/c-2.png',
    'assets/c-3.png',
    'assets/c-4.png',
    'assets/c-5.png',
    'assets/c-6.png',
    'assets/c-7.png',
    'assets/c-8.png',
    'assets/c-9.png',
    'assets/c-10.png',
    'assets/c-11.png',
    'assets/c-12.png',
    'assets/c-13.png',
    'assets/c-14.png',
    


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
