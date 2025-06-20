import 'package:clean_arch_movie_app/features/movie/data/datasource/movie_remote_datasource.dart';
import 'package:clean_arch_movie_app/features/movie/data/repository/movie_repository.dart';
import 'package:clean_arch_movie_app/features/movie/domain/repository/base_movie_repository.dart';
import 'package:clean_arch_movie_app/features/movie/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/domain/usecases/get_popular_movies_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/presentation/controller/movie_bloc.dart';
import 'package:get_it/get_it.dart';

// todo access it globally
final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    // todo bloc

    sl.registerFactory(() => MovieBloc(sl(), sl(), sl()));
    // todo usecases
    sl.registerSingleton(() => GetNowPlayingMoviesUsecase(sl()));
    sl.registerSingleton(() => GetPopularMoviesUsecase(sl()));
    sl.registerSingleton(() => GetTopRatedMoviesUsecase(sl()));
    // todo repository

    sl.registerLazySingleton<BaseMovieRepository>(
      () => MovieRepository(sl(), baseMovieRemoteDatasource: sl()),
    );

    // todo data source
    //todo  create it when call it -> lazy singleton
    sl.registerLazySingleton<BaseMovieRemoteDatasource>(
      () => MovieRemoteDatasource(),
    );
  }
}
