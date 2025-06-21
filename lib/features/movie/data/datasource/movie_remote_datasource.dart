import 'package:clean_arch_movie_app/core/utils/constants.dart';
import 'package:clean_arch_movie_app/core/err/exception.dart';
import 'package:clean_arch_movie_app/core/networks/error_handler_message_model.dart';
import 'package:clean_arch_movie_app/features/movie/data/models/movie_details_model.dart';
import 'package:clean_arch_movie_app/features/movie/data/models/movie_model.dart';
import 'package:clean_arch_movie_app/features/movie/data/models/recommendation_model.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/recommendation.dart';
import 'package:clean_arch_movie_app/features/movie/domain/usecases/get_movie_details_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/domain/usecases/get_recommendation_usecase.dart';
import 'package:dio/dio.dart';

abstract class BaseMovieRemoteDatasource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();

  Future<MovieDetailsModel> getMovieDetails(MovieDetailsParameters parameters);

  Future<List<Recommendation>> getRecommendation(
    RecommendationParameters parameters,
  );
}

class MovieRemoteDatasource extends BaseMovieRemoteDatasource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    // todo
    final response = await Dio().get(AppConstants.nowPlayingMovies);

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data["results"] as List).map((e) => MovieModel.fromJson(e)),
      );
    } else {
      throw ServerException(ErrorHandlerMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    // todo
    final response = await Dio().get(AppConstants.popularMovies);

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data["results"] as List).map((e) => MovieModel.fromJson(e)),
      );
    } else {
      throw ServerException(ErrorHandlerMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    // todo
    final response = await Dio().get(AppConstants.topRatedMovies);

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data["results"] as List).map((e) => MovieModel.fromJson(e)),
      );
    } else {
      throw ServerException(ErrorHandlerMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(
    MovieDetailsParameters parameters,
  ) async {
    // todo
    final response = await Dio().get(
      AppConstants.movieDetails(parameters.movieId),
    );

    if (response.statusCode == 200) {
      return MovieDetailsModel.fromJson(response.data);
    } else {
      throw ServerException(ErrorHandlerMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<Recommendation>> getRecommendation(
    RecommendationParameters parameters,
  ) async {
    // todo
    final response = await Dio().get(
      AppConstants.movieRecommendations(parameters.id),
    );

    if (response.statusCode == 200) {
      return List<Recommendation>.from(
        (response.data["results"] as List).map(
          (e) => RecommendationModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(ErrorHandlerMessageModel.fromJson(response.data));
    }
  }
}
