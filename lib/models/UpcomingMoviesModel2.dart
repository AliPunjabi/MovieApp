class UpcomingMoviesModel2 {
  final List movies;
  UpcomingMoviesModel2({required this.movies});

  factory UpcomingMoviesModel2.fromJson(Map<String, dynamic> json) {
    return UpcomingMoviesModel2(
      movies: json['results'],
    );
  }
}
