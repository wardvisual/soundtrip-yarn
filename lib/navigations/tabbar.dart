import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify/views/home.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
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
