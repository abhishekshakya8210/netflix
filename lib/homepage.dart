import 'package:flutter/material.dart';
import 'package:netflix/home.dart';
import 'package:netflix/live_tv.dart';
import 'package:netflix/movie.dart';
import 'package:netflix/tv_shows.dart';

class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,


      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: screenHeight*0.10,
           title: Image.asset('assets/n-1.png', 
           height: screenHeight * 0.06), 
            centerTitle: true,
          backgroundColor: Colors.black,
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            tabs: [
            Tab(text: 'Home',),
            Tab(text: 'Movies',),
            Tab(text: 'TV Shows',),
            Tab(text: 'Live TV',),
         
            
          ]),
          ),
          bottomNavigationBar: Container(
            height: screenHeight*0.1,
            width: screenWidth*double.maxFinite,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Icon(Icons.home,size:40,color: Colors.grey,),
              Icon(Icons.search,size:40,color: Colors.grey,),
              Icon(Icons.tv,size:40,color: Colors.grey,),
              Icon(Icons.more,size:40,color: Colors.grey,),
              
            ],),
          ),
          
          backgroundColor: Colors.black,
          body: 
          TabBarView(
            
            children: [
            Home(),
            Movie(),
            Tv_shows(),
            Live_tv()
          ])
        ),
      ),
    );
  }
}