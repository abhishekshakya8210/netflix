import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // Get screen size
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black, // Netflix-style dark theme
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.08, // 8% of screen width
              vertical: screenHeight * 0.02, // 2% of screen height
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Netflix Logo
                Image.asset(
                  'assets/netflix.png',
                  height: screenHeight * 0.15, // 15% of screen height
                ),
                SizedBox(height: screenHeight * 0.05), // 5% space

                // Email Input Field
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[900], // Dark Grey Background
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),

                // Password Input Field
                TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[900],
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),

                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: screenHeight * 0.07, // 7% of screen height
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      // Login action
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: screenWidth * 0.05), // Adjusted for screen size
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),

                // Sign Up Text
                GestureDetector(
                  onTap: () {
                    // Navigate to Sign Up Page
                  },
                  child: Text(
                    "Don't have an account? Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.04),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
