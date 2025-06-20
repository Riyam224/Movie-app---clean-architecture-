import 'package:clean_arch_movie_app/core/err/exception.dart';
import 'package:clean_arch_movie_app/core/err/failure_abstract_class.dart';
import 'package:clean_arch_movie_app/features/movie/data/datasource/movie_remote_datasource.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/movie.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/movie_details.dart';
import 'package:clean_arch_movie_app/features/movie/domain/repository/base_movie_repository.dart';
import 'package:clean_arch_movie_app/features/movie/domain/usecases/get_movie_details_usecase.dart';
import 'package:dartz/dartz.dart';

class MovieRepository extends BaseMovieRepository {
  // todo abstract base datasource
  final BaseMovieRemoteDatasource baseMovieRemoteDatasource;
  MovieRepository(
    Type movieRemoteDatasource, {
    required this.baseMovieRemoteDatasource,
  });

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDatasource.getNowPlayingMovies();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          failure.errorHandlerMessageModel!.statusMessage,
          message: 'Server Failure',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDatasource.getPopularMovies();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          failure.errorHandlerMessageModel!.statusMessage,
          message: 'Server Failure',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDatasource.getTopRatedMovies();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          failure.errorHandlerMessageModel!.statusMessage,
          message: 'Server Failure',
        ),
      );
    }
  }

  // todo movie details
  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(
    MovieDetailsParameters parameters,
  ) async {
    final result = await baseMovieRemoteDatasource.getMovieDetails(parameters);

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
        ServerFailure(
          failure.errorHandlerMessageModel!.statusMessage,
          message: 'Server Failure',
        ),
      );
    }
  }
}
