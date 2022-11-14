// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:soundtrip_yarn/widgets/album_card.dart';
import 'package:soundtrip_yarn/widgets/row_album_card.dart';
import 'package:soundtrip_yarn/widgets/song_card.dart';

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
          )),
        ),
        SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
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
                            style: Theme.of(context).textTheme.headline6,
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
                            AlbumCard(
                              label: "Beliver",
                              image: AssetImage("assets/album1.jpg"),
                            ),
                            SizedBox(width: 16),
                            AlbumCard(
                              label: "Beliver",
                              image: AssetImage("assets/album2.jpeg"),
                            ),
                            SizedBox(width: 16),
                            AlbumCard(
                              label: "Beliver",
                              image: AssetImage("assets/album3.jpg"),
                            ),
                            SizedBox(width: 16),
                            AlbumCard(
                              label: "Beliver",
                              image: AssetImage("assets/album4.jpeg"),
                            ),
                            SizedBox(width: 16),
                            AlbumCard(
                              label: "Beliver",
                              image: AssetImage("assets/album5.jpg"),
                            ),
                            SizedBox(width: 16),
                            AlbumCard(
                              label: "Beliver",
                              image: AssetImage("assets/album6.jpg"),
                            ),
                          ],
                        ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Good morning!", 
                            style: Theme.of(context).textTheme.headline6,  
                          ),
                          SizedBox(height: 16,),
                          Row(
                            children: [
                              RowAlbumCard(image: AssetImage("assets/album1.jpg"), label: "Top 50 Global",),
                              SizedBox(width: 10,),
                              RowAlbumCard(image: AssetImage("assets/album2.jpeg"), label: "Best Mode",),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              RowAlbumCard(image: AssetImage("assets/album3.jpg"), label: "Lany World",),
                              SizedBox(width: 10,),
                              RowAlbumCard(image: AssetImage("assets/album4.jpeg"), label: "Coding Postcast",),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              RowAlbumCard(image: AssetImage("assets/album5.jpg"), label: "Jeremy Zucker",),
                              SizedBox(width: 10,),
                              RowAlbumCard(image: AssetImage("assets/album6.jpg"), label: "Top Hits",),
                            ],
                          )
                        ],
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Based on your recent",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(image: AssetImage("assets/album1.jpg"), label: "Justin Bieber, Jeremy Zucker, Ed Sheeran, Lany, ..",),
                              SizedBox(width: 15,),
                              SongCard(image: AssetImage("assets/album2.jpeg"), label: "Justin Bieber, Jeremy Zucker, Ed Sheeran, Lany, ..",),
                              SizedBox(width: 15,),
                              SongCard(image: AssetImage("assets/album3.jpg"), label: "Justin Bieber, Jeremy Zucker, Ed Sheeran, Lany, ..",),
                              SizedBox(width: 15,),
                              SongCard(image: AssetImage("assets/album4.jpeg"), label: "Justin Bieber, Jeremy Zucker, Ed Sheeran, Lany, ..",),
                              SizedBox(width: 15,),
                              SongCard(image: AssetImage("assets/album5.jpg"), label: "Justin Bieber, Jeremy Zucker, Ed Sheeran, Lany, ..",),
                            ],
                          )
                        )
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Recommended playlist",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(image: AssetImage("assets/album5.jpg"), label: "Justin Bieber, Jeremy Zucker, Ed Sheeran, Lany, ..",),
                              SizedBox(width: 15,),
                              SongCard(image: AssetImage("assets/album4.jpeg"), label: "Justin Bieber, Jeremy Zucker, Ed Sheeran, Lany, ..",),
                              SizedBox(width: 15,),
                              SongCard(image: AssetImage("assets/album6.jpg"), label: "Justin Bieber, Jeremy Zucker, Ed Sheeran, Lany, ..",),
                              SizedBox(width: 15,),
                              SongCard(image: AssetImage("assets/album2.jpeg"), label: "Justin Bieber, Jeremy Zucker, Ed Sheeran, Lany, ..",),
                              SizedBox(width: 15,),
                              SongCard(image: AssetImage("assets/album1.jpg"), label: "Justin Bieber, Jeremy Zucker, Ed Sheeran, Lany, ..",),
                            ],
                          )
                        )
                      ],
                    ),


                  ],
                ),
              ),
            ))
      ],
    ));
  }
}


