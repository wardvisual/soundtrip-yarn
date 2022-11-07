import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  final String label;

  const SongCard({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        child: Column(
          children: [
            Image(
              image: image,
              height: 140,
              width: 140,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.caption,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
          ],
        ));
  }
}
