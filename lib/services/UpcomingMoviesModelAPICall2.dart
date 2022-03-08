import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movieapp/models/UpcomingMoviesModel2.dart';

Future<UpcomingMoviesModel2> fetchMovies2() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=bb922fca36cf2401d2189e66e4da6c50&language=en-US&page=1'));
  if (response.statusCode == 200) {
    return UpcomingMoviesModel2.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Unexpected error occured!');
  }
}
