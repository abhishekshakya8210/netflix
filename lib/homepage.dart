import 'package:flutter/material.dart';
import 'package:netflix/home.dart';
import 'package:netflix/live_tv.dart';
import 'package:netflix/liveseen.dart';
import 'package:netflix/more.dart';
import 'package:netflix/movie.dart';
import 'package:netflix/search.dart';
import 'package:netflix/tv_shows.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // ✅ Get Screen Width & Height using MediaQuery
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: screenHeight * 0.10, // ✅ Scales AppBar height
            title: Image.asset(
              'assets/n-1.png',
              height: screenHeight * 0.06, // ✅ Logo scales with screen
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
            bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.red,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Movies'),
                Tab(text: 'TV Shows'),
                Tab(text: 'Live TV'),
              ],
            ),
          ),

          // ✅ Dynamic Bottom Navigation Bar
          bottomNavigationBar: Container(
            height: screenHeight * 0.08, // ✅ Scales Bottom Bar height
            width: screenWidth, // ✅ Uses full screen width
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home, size: screenWidth * 0.08, color: Colors.white),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                     MaterialPageRoute(builder: 
                    (context)=>Search()));
                  },
                  child: Icon(Icons.search, size: screenWidth * 0.08, color: Colors.white)),
                GestureDetector(
                     onTap: () {
                    Navigator.push(context,
                     MaterialPageRoute(builder: 
                    (context)=>LiveSeen()));
                  },
                  child: Icon(Icons.tv, size: screenWidth * 0.08, color: Colors.white)),
                GestureDetector(
                    onTap: () {
                    Navigator.push(context,
                     MaterialPageRoute(builder: 
                    (context)=>More()));
                  },
                  child: Icon(Icons.more_horiz, size: screenWidth * 0.08, color: Colors.white)),
              ],
            ),
          ),

          backgroundColor: Colors.black,

          // ✅ Tab Views with Pages
          body: TabBarView(
            children: [
              Home(),
              Movie(),
              Tv_shows(),
              Live_tv(),
            ],
          ),
        ),
      ),
    );
  }
}
