import 'package:clean_arch_movie_app/core/err/failure_abstract_class.dart';
import 'package:clean_arch_movie_app/core/usecases/base_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/movie.dart';
import 'package:clean_arch_movie_app/features/movie/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetTopRatedMoviesUsecase extends BaseUsecase<List<Movie>> {
  BaseMovieRepository baseMovieRepository;

  GetTopRatedMoviesUsecase(this.baseMovieRepository);
  @override
  Future<Either<Failure, List<Movie>>> call() async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}
