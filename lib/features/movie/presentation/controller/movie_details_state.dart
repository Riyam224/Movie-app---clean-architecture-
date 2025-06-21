import 'package:clean_arch_movie_app/core/utils/enum.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/movie_details.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/recommendation.dart';
import 'package:equatable/equatable.dart';

class MovieDetailsState extends Equatable {
  const MovieDetailsState({
    this.movieDetails,
    this.movieDetailsState = RequestState.loading,
    this.message = '',
    // todo recommendation
    this.recommendation = const [],
    this.recommendationState = RequestState.loading,
    this.recommendationMessage = '',
  });
  // todo movie detials

  final MovieDetails? movieDetails;
  final RequestState movieDetailsState;
  final String message;
  // todo recommendation
  final List<Recommendation> recommendation;
  final RequestState recommendationState;
  final String recommendationMessage;

  MovieDetailsState copyWith({
    MovieDetails? movieDetails,
    RequestState? movieDetailsState,
    String? message,
    // todo recommendation
    List<Recommendation>? recommendation,
    RequestState? recommendationState,
    String? recommendationMessage,
  }) {
    return MovieDetailsState(
      movieDetails: movieDetails ?? this.movieDetails,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      message: message ?? this.message,
      // todo recommendation
      recommendation: recommendation ?? this.recommendation,
      recommendationState: recommendationState ?? this.recommendationState,
      recommendationMessage:
          recommendationMessage ?? this.recommendationMessage,
    );
  }

  @override
  List<Object?> get props => [
    movieDetails,
    movieDetailsState,
    message,
    recommendation,
    recommendationState,
    recommendationMessage,
  ];
}
