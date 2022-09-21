import 'package:flutter/material.dart';


class MoviesProvider extends ChangeNotifier {
  MoviesProvider() {
    print('Movies on display initialize');
    getOnDisplayMovies();
  }

  getOnDisplayMovies() {
    print('getOnDisplaymovies');
  }
}
