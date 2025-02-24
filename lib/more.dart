import 'package:flutter/material.dart';
import 'package:netflix/content.dart';
import 'package:netflix/faq.dart';
import 'package:netflix/pament.dart';
import 'package:netflix/terms.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            buildListTile(
              context,
              icon: Icons.payment,
              title: 'Payment Method',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Pament())),
              screenWidth: screenWidth,
            ),
            buildDivider(screenWidth),
            
            buildListTile(
              context,
              icon: Icons.help_outline,
              title: 'FAQs',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Faq())),
              screenWidth: screenWidth,
            ),
            buildDivider(screenWidth),
            
            buildListTile(
              context,
              icon: Icons.description,
              title: 'Terms Of Use',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Terms())),
              screenWidth: screenWidth,
            ),
            buildDivider(screenWidth),
            
            buildListTile(
              context,
              icon: Icons.info_outline,
              title: 'Content RM',
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Content())),
              screenWidth: screenWidth,
            ),
            buildDivider(screenWidth),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(BuildContext context, {required IconData icon, required String title, required VoidCallback onTap, required double screenWidth}) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(icon, size: screenWidth * 0.08, color: Colors.red), // ✅ Responsive icon size
        title: Text(
          title,
          style: TextStyle(
            fontSize: screenWidth * 0.05, // ✅ Responsive font size
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.red, size: screenWidth * 0.05), // ✅ Responsive arrow size
      ),
    );
  }

  Widget buildDivider(double screenWidth) {
    return Divider(thickness: screenWidth * 0.002, color: Colors.grey); // ✅ Responsive divider thickness
  }
}
