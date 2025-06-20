import 'package:clean_arch_movie_app/core/utils/enum.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/movie.dart';
import 'package:equatable/equatable.dart';

class MovieState extends Equatable {
  // now playing
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;

  // popular
  final List<Movie> popularMovies;
  final RequestState popularMoviesState;
  final String popularMoviesMessage;

  // top rated
  final List<Movie> topRatedMovies;
  final RequestState topRatedMoviesState;
  final String topRatedMoviesMessage;

  MovieState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingMessage = '',
    this.popularMovies = const [],
    this.popularMoviesState = RequestState.loading,
    this.popularMoviesMessage = '',
    this.topRatedMovies = const [],
    this.topRatedMoviesState = RequestState.loading,
    this.topRatedMoviesMessage = '',
  });

  //  todo TO NOW keep creating objects over and over

  MovieState copyWith({
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,

    // popular
    List<Movie>? popularMovies,
    RequestState? popularMoviesState,
    String? popularMoviesMessage,

    // top rated
    List<Movie>? topRatedMovies,
    RequestState? topRatedMoviesState,
    String? topRatedMoviesMessage,
  }) {
    return MovieState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularMoviesState: popularMoviesState ?? this.popularMoviesState,
      popularMoviesMessage: popularMoviesMessage ?? this.popularMoviesMessage,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedMoviesState: topRatedMoviesState ?? this.topRatedMoviesState,
      topRatedMoviesMessage:
          topRatedMoviesMessage ?? this.topRatedMoviesMessage,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    nowPlayingMovies,
    nowPlayingState,
    nowPlayingMessage,
    popularMovies,
    popularMoviesState,
    popularMoviesMessage,
    topRatedMovies,
    topRatedMoviesState,
    topRatedMoviesMessage,
  ];
}
