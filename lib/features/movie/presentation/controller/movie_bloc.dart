// ignore_for_file: avoid_print
import 'dart:async';
import 'package:clean_arch_movie_app/core/usecases/base_usecase.dart';
import 'package:clean_arch_movie_app/core/utils/enum.dart';
import 'package:clean_arch_movie_app/features/movie/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/domain/usecases/get_popular_movies_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/presentation/controller/movie_event.dart';
import 'package:clean_arch_movie_app/features/movie/presentation/controller/movie_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final GetNowPlayingMoviesUsecase getNowPlayingMoviesUsecase;
  final GetPopularMoviesUsecase getPopularMoviesUsecase;
  final GetTopRatedMoviesUsecase getTopRatedMoviesUsecase;

  MovieBloc(
    this.getNowPlayingMoviesUsecase,
    this.getPopularMoviesUsecase,
    this.getTopRatedMoviesUsecase,
  ) : super(MovieState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovie);

    on<GetPopularMoviesEvent>(_topPopularMovie);

    on<GetTopRatedMoviesEvent>(_getTopRatedMovie);
  }

  // todo methods

  FutureOr<void> _getTopRatedMovie(event, emit) async {
    emit(
      state.copyWith(
        topRatedMoviesState: RequestState.loading,
        topRatedMoviesMessage: '',
      ),
    );

    final result = await getTopRatedMoviesUsecase(NoParams());
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            topRatedMoviesState: RequestState.error,
            topRatedMoviesMessage: failure.message,
          ),
        );
      },
      (movies) {
        emit(
          state.copyWith(
            topRatedMoviesState: RequestState.loaded,
            topRatedMovies: movies,
          ),
        );
      },
    );
  }

  FutureOr<void> _topPopularMovie(event, emit) async {
    emit(
      state.copyWith(
        popularMoviesState: RequestState.loading,
        popularMoviesMessage: '',
      ),
    );

    final result = await getPopularMoviesUsecase(NoParams());
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            popularMoviesState: RequestState.error,
            popularMoviesMessage: failure.message,
          ),
        );
      },
      (movies) {
        emit(
          state.copyWith(
            popularMoviesState: RequestState.loaded,
            popularMovies: movies,
          ),
        );
      },
    );
  }

  FutureOr<void> _getNowPlayingMovie(event, emit) async {
    emit(
      state.copyWith(
        nowPlayingState: RequestState.loading,
        nowPlayingMessage: '',
      ),
    );

    final result = await getNowPlayingMoviesUsecase(NoParams());
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            nowPlayingState: RequestState.error,
            nowPlayingMessage: failure.message,
          ),
        );
      },
      (movies) {
        emit(
          state.copyWith(
            nowPlayingState: RequestState.loaded,
            nowPlayingMovies: movies,
          ),
        );
      },
    );
  }
}
