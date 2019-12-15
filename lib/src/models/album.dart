import 'package:flutter/material.dart';

class Album {

  final String imageUrl;
  final String title;
  final String description;

  Album({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });

}

final List<String> categories = [
    'Tocadas recentemente',
    'Feito para Gabryel',
    'Seus podcasts mais escutados',
    'Sua decada Spotify'
  ];

  final List<Album> albuns = [
    Album(
      imageUrl: 'assets/images/spotify_album_1.jpg',
      title: 'Daily Mix 1',
      description: 'Matue, PK, Orochi e mais',
    ),
    Album(
      imageUrl: 'assets/images/spotify_discover_weekly.jpg',
      title: 'Descobertas da Semana',
      description: 'De Spotify',
    ),
    Album(
      imageUrl: 'assets/images/spotify_album_2.jpg',
      title: 'Daily Mix 2',
      description: 'Post Malone, Drake, Logic e mais',
    ),
    Album(
      imageUrl: 'assets/images/spotify_album_3.jpg',
      title: 'Daily Mix 3',
      description: 'Hans Zimmer, Ramin Djawadi, Bear McCreary e mais',
    ),
  ];