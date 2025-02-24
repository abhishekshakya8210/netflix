import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Pament extends StatefulWidget {
  const Pament({super.key});

  @override
  State<Pament> createState() => _PamentState();
}

class _PamentState extends State<Pament> {
  void _showQRCode(BuildContext context, String data) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          title: Text('QR Code', style: TextStyle(color: Colors.white)),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.width * 0.6,
            child: QrImageView(
              data: data,
              size: MediaQuery.of(context).size.width * 0.5,
              backgroundColor: Colors.white,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Close', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.05),
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.07,
              width: screenWidth * 0.4,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Plans',
                  style: TextStyle(fontSize: screenWidth * 0.05, fontWeight: FontWeight.w800, color: Colors.red),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            GestureDetector(
              onTap: () => _showQRCode(context, "3 Month Subscription INR 99"),
              child: Container(
                height: screenHeight * 0.2,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '3 month INR 99 /-',
                      style: TextStyle(fontSize: screenWidth * 0.06, color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: screenHeight * 0.07,
                          width: screenWidth * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Festive offer',
                              style: TextStyle(fontSize: screenWidth * 0.05, fontWeight: FontWeight.w800, color: Colors.red),
                            ),
                          ),
                        ),
                        Text(
                          'INR 199 /',
                          style: TextStyle(fontSize: screenWidth * 0.045, color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Save 400 /-',
                      style: TextStyle(fontSize: screenWidth * 0.045, color: Colors.white, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Text(
              'Netflix Gold',
              style: TextStyle(fontSize: screenWidth * 0.08, fontWeight: FontWeight.w800, color: Colors.white),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              '8 daily new episodes',
              style: TextStyle(fontSize: screenWidth * 0.06, fontWeight: FontWeight.w800, color: Colors.grey),
            ),
            Text(
              '50+ Blockbuster movies',
              style: TextStyle(fontSize: screenWidth * 0.06, fontWeight: FontWeight.w800, color: Colors.grey),
            ),
            Text(
              '100+ Movies',
              style: TextStyle(fontSize: screenWidth * 0.06, fontWeight: FontWeight.w800, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
