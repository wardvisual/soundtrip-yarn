// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter, 
                colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.1),
                  Colors.black.withOpacity(0)
                ],
              )
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recently Played",
                          style: Theme.of(context).textTheme.headline6
                        ),
                        Row(
                          children: [
                            Icon(Icons.history),
                            SizedBox(width: 20),
                            Icon(Icons.settings),
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        AlbumCard(),
                        SizedBox(width: 16),
                        AlbumCard(),
                        SizedBox(width: 16),
                        AlbumCard(),
                        SizedBox(width: 16),
                        AlbumCard(),
                        SizedBox(width: 16),
                        AlbumCard(),
                        SizedBox(width: 16),
                        AlbumCard(),
                      ],
                    )
                  )
                ],
              ),
            )
          )
      ],)
    );
  }
}

class AlbumCard extends StatelessWidget {
  const AlbumCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/beliver.jpg",
          width: 125,
          height: 125,
        ),
        SizedBox(height: 10),
        Text("Beliver")
      ],
    );
  }
}
