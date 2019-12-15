import 'package:flutter/material.dart';
import 'package:spotify/src/models/album.dart';
import 'package:spotify/src/widgets/album_card.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                height: 190,
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: albuns.length,
                  itemBuilder: (context, index) {
                    return AlbumCard(album: albuns[index]);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
