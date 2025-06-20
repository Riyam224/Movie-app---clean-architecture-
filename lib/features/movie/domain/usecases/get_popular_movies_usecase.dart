import 'package:clean_arch_movie_app/core/err/failure_abstract_class.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/movie.dart';
import 'package:clean_arch_movie_app/features/movie/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetPopularMoviesUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUsecase(this.baseMovieRepository);

  Future<Either<Failure, List<Movie>>> excute() async {
    return await baseMovieRepository.getPopularMovies();
  }
}
