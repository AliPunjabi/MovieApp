class MovieGenre {
  final List movies;
  MovieGenre({required this.movies});

  factory MovieGenre.fromJson(Map<String, dynamic> json) {
    return MovieGenre(
      movies: json['results'],
    );
  }
}
