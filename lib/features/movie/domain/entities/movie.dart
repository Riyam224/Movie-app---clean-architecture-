// ignore_for_file: override_on_non_overriding_member

import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String backdropPath;
  final double voteAverage;
  final List<int> genreIds;
  final int voteCount;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.backdropPath,
    required this.voteAverage,
    required this.genreIds,
    required this.voteCount,
    required this.releaseDate,
  });

  @override
  List<Object> get props => [
    id,
    title,
    overview,
    posterPath,
    backdropPath,
    voteAverage,
    genreIds,
    voteCount,
    releaseDate,
  ];
}
