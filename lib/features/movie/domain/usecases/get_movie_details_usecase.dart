import 'package:clean_arch_movie_app/core/err/failure_abstract_class.dart';
import 'package:clean_arch_movie_app/core/usecases/base_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/movie_details.dart';
import 'package:clean_arch_movie_app/features/movie/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetMovieDetailsUsecase
    extends BaseUsecase<MovieDetails, MovieDetailsParameters> {
  final BaseMovieRepository baseMovieRepository;

  GetMovieDetailsUsecase(this.baseMovieRepository);
  @override
  Future<Either<Failure, MovieDetails>> call(
    MovieDetailsParameters parameters,
  ) async {
    return await baseMovieRepository.getMovieDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable {
  final int movieId;
  const MovieDetailsParameters({required this.movieId});
  @override
  List<Object?> get props => [movieId];
}
