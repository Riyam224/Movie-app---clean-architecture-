import 'package:clean_arch_movie_app/features/movie/data/models/genres_model.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel({
    required super.backdropPath,
    required super.id,
    required super.genres,
    required super.overview,
    required super.posterPath,
    required super.releaseDate,
    required super.title,
    required super.voteAverage,
    required super.runtime,
    required super.voteCount,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      backdropPath: json['backdrop_path'],
      id: json['id'],
      genres: List<GenresModel>.from(
        (json['genres'] as List).map((e) => GenresModel.fromJson(e)),
      ),
      overview: json['overview'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      voteAverage: json['vote_average'],
      runtime: json['runtime'],
      voteCount: json['vote_count'],
    );
  }
}
