// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify/views/home.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index){
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined), 
          label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined), 
          label: "Seach"),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music), 
          label: "Your Library"),
        BottomNavigationBarItem(
          icon: Icon(Icons.person), 
          label: "Profile"),
      ]),
      body: const HomeView(),
    );
  }
}
