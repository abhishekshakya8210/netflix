import 'package:flutter/material.dart';
import 'package:netflix/homepage.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white, size: screenWidth * 0.07),
          toolbarHeight: screenHeight * 0.08,
          backgroundColor: Colors.black,
          title: Image.asset('assets/n-1.png', height: screenHeight * 0.07),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.06),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.06),
                  
                  // Email or Number Input Field
                  Container(
                    height: screenHeight * 0.09,
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.02),
                      child: TextField(
                        cursorColor: Colors.white,
                        style: TextStyle(fontSize: screenWidth * 0.045, color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Enter email or number',
                          labelStyle: TextStyle(fontSize: screenWidth * 0.045, color: Colors.white),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  
                  // Password Input Field
                  Container(
                    height: screenHeight * 0.09,
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.02),
                      child: TextField(
                        obscureText: true,
                        cursorColor: Colors.white,
                        style: TextStyle(fontSize: screenWidth * 0.045, color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: screenWidth * 0.045, color: Colors.white),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),

                  // Sign In Button
                  SizedBox(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.08,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:
                   (context)=>Homepage()));
                
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // OR Text
                  Text(
                    'OR',
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // Forgot Password
                  Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),

                  // Sign Up Prompt
                  Text(
                    'New to Netflix? Sign up now',
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
