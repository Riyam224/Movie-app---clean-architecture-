import 'package:clean_arch_movie_app/core/err/failure_abstract_class.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/movie.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/movie_details.dart';
import 'package:clean_arch_movie_app/features/movie/domain/usecases/get_movie_details_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();

  Future<Either<Failure, MovieDetails>> getMovieDetails(
    MovieDetailsParameters parameters,
  );
}
