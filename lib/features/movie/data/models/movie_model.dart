import 'package:clean_arch_movie_app/features/movie/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.title,
    required super.overview,
    required super.posterPath,
    required super.backdropPath,
    required super.voteAverage,
    required super.genreIds,
    required super.voteCount,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
    id: json["id"],
    title: json["title"],
    overview: json["overview"],
    posterPath: json["poster_path"],
    backdropPath: json["backdrop_path"],
    voteAverage: json["vote_average"].toDouble(),
    genreIds: List<int>.from(json["genre_ids"].map((e) => e)),
    voteCount: json["vote_count"],
    releaseDate: json["release_date"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "overview": overview,
    "poster_path": posterPath,
    "backdrop_path": backdropPath,
    "vote_average": voteAverage,
    "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
    "vote_count": voteCount,
    "release_date": releaseDate,
  };
}
