import 'dart:convert';

import 'package:flutter_movie_db/src/model/movie.dart';
import 'package:http/http.dart' as http;

class MovieRepository {
  var queryParam = {'api_key': "29cdc3f472e00eeec0cda1a431dcb6fa"};

  Future<List<Movie>> loadMovies() async {
    var uri = Uri.https("api.themoviedb.org", "/3/movie/popular", queryParam);
    var response = await http.get(uri);
    if (response.body != null) {
      Map<String, dynamic> body = json.decode(response.body);
      if (body["results"] != null) {
        List<dynamic> list = body["results"];
        return list.map<Movie>((item) => Movie.fromJson(item)).toList();
      }
    }
  }
}
