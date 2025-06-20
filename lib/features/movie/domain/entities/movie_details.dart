import 'package:clean_arch_movie_app/features/movie/domain/entities/generes.dart';
import 'package:equatable/equatable.dart';

class MovieDetails extends Equatable {
  final String backdropPath;
  final int id;
  final List<Genres> genres;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final String title;
  final double voteAverage;
  final int runtime;
  final int voteCount;

  const MovieDetails({
    required this.backdropPath,
    required this.id,
    required this.genres,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.runtime,
    required this.voteCount,
  });

  @override
  List<Object?> get props => [
    backdropPath,
    id,
    genres,
    overview,
    posterPath,
    releaseDate,
    title,
    voteAverage,
    runtime,
    voteCount,
  ];
}
