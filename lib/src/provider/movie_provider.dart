import 'package:flutter/material.dart';
import 'package:flutter_movie_db/src/model/movie.dart';
import 'package:flutter_movie_db/src/repository/movie_repository.dart';

class MovieProvider extends ChangeNotifier {
  MovieRepository _movieRepository = MovieRepository();
  List<Movie> _movies = [];
  List<Movie> get movies => _movies;

  loadMovies() async {
    List<Movie> listMovies = await _movieRepository.loadMovies();
    //listMovices 예외 처리 해주고
    //추가적인 가공정절차
    _movies = listMovies;
    notifyListeners();
    //repository
  }
}
