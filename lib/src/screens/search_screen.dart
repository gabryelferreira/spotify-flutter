import 'package:flutter/material.dart';
import 'package:spotify/src/models/genre.dart';

class SearchScreen extends StatelessWidget {
  Size size;

  List<Widget> _renderCategories() {
    return genreCategories.map((category) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              category,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          _renderGenres(),
        ],
      );
    }).toList();
  }

  Widget _renderGenres() {
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 5),
      crossAxisCount: 2,
      childAspectRatio: (itemHeight / itemWidth),
      shrinkWrap: true,
      controller: ScrollController(keepScrollOffset: false),
      children: genres.map((gender) {
        return Card(
          color: gender.color,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              gender.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      child: ListView(
        padding: EdgeInsets.only(bottom: 20),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 100),
              Text(
                'Buscar',
                style: _screenTitleStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Text(
                        'Artistas, musicas ou podcasts',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: _renderCategories(),
          ),
        ],
      ),
    );
  }
}

final _screenTitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 36,
  fontWeight: FontWeight.bold,
);