import 'package:flutter/material.dart';

class Genre {

  final String name;
  final Color color;

  Genre({
    @required this.name,
    @required this.color,
  });

}

final List<String> genreCategories = [
    'Seus generos favoritos',
    'Navegar por todas as secoes'
  ];

  final List<Genre> genres = [
    Genre(name: 'Hip Hop', color: Colors.orange),
    Genre(name: 'Rock', color: Colors.red),
    Genre(name: 'Pop', color: Colors.greenAccent),
    Genre(name: 'Indie', color: Colors.purple),
  ];