import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movieapp/models/MovieSearchModel.dart';

Future<MovieGenre> fetchMovies(movieName) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/search/movie?api_key=bb922fca36cf2401d2189e66e4da6c50&language=en-US&query=$movieName&include_adult=false'));
  if (response.statusCode == 200) {
    return MovieGenre.fromJson(json.decode(response.body));
  } else {
    throw Exception('Unexpected error occured!');
  }
}
