import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies/models/now_playing_response.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = '2eef05c086fcf6d9c34d52f54f47812d';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  MoviesProvider() {
    
    print('Movies on display initialize');
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movies/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});
    final response = await http.get(url);
    final nowplayingaaResponse = NowPlayingResponse.fromJson(response.body);
    print(nowplayingaaResponse.results[0]);
  }
}
