// ignore_for_file: prefer_const_constructors

import 'package:flutter/widgets.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;

  const AlbumCard({
    Key? key, required this.image, required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          width: 120,  
          height: 120,  
          fit: BoxFit.cover,
          
        ),
        SizedBox(height: 10),
        Text(label)
      ],
    );
  }
}
