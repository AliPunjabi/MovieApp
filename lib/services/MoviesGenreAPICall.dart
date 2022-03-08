import 'dart:convert';

import 'package:movieapp/models/MovieGenreModel.dart';
import 'package:http/http.dart' as http;

Future<MoviesGenre> fetchMoviesGenre() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/genre/movie/list?api_key=bb922fca36cf2401d2189e66e4da6c50&language=en-US'));
  if (response.statusCode == 200) {
    return MoviesGenre.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Unexpected error occured!');
  }
}
