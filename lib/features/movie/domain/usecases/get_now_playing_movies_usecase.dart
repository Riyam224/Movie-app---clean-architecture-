import 'package:clean_arch_movie_app/core/err/failure_abstract_class.dart';
import 'package:clean_arch_movie_app/core/usecases/base_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/movie.dart';
import 'package:clean_arch_movie_app/features/movie/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetNowPlayingMoviesUsecase extends BaseUsecase<List<Movie>?, NoParams> {
  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMoviesUsecase(this.baseMovieRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParams noParams) async {
    return await baseMovieRepository.getNowPlayingMovies();
  }
}
