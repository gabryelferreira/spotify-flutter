import 'package:flutter/material.dart';
import 'package:spotify/src/models/album.dart';

class AlbumCard extends StatelessWidget {

  final Album album;

  AlbumCard({
    @required this.album,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              album.imageUrl,
              height: 120,
              width: 120,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              album.title,
              style: _albumTitleStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              album.description,
              style: _albumDescriptionStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}

const _albumTitleStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 12,
);

const _albumDescriptionStyle = TextStyle(
  color: Colors.grey,
  fontSize: 10,
);
