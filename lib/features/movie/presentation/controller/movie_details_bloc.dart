import 'dart:async';
import 'package:clean_arch_movie_app/core/utils/enum.dart';
import 'package:clean_arch_movie_app/features/movie/domain/usecases/get_movie_details_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/domain/usecases/get_recommendation_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/presentation/controller/movie_details_event.dart';
import 'package:clean_arch_movie_app/features/movie/presentation/controller/movie_details_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUsecase, this.getRecommendationUsecase)
    : super(MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommendationEvent>(_getRecommendation);
  }

  final GetMovieDetailsUsecase getMovieDetailsUsecase;
  final GetRecommendation getRecommendationUsecase;

  FutureOr<void> _getMovieDetails(event, emit) async {
    final result = await getMovieDetailsUsecase(
      MovieDetailsParameters(movieId: event.id),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            movieDetailsState: RequestState.error,
            message: failure.message,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            movieDetailsState: RequestState.loaded,
            movieDetails: r,
          ),
        );
      },
    );
  }

  // todo get recommendation
  FutureOr<void> _getRecommendation(
    GetMovieRecommendationEvent event,
    Emitter<MovieDetailsState> emit,
  ) async {
    final result = await getRecommendationUsecase(
      RecommendationParameters(event.id),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            recommendationState: RequestState.error,
            recommendationMessage: failure.message,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            recommendationState: RequestState.loaded,
            recommendation: r,
          ),
        );
      },
    );
  }
}
