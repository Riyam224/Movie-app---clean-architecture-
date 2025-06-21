import 'package:clean_arch_movie_app/core/err/failure_abstract_class.dart';
import 'package:clean_arch_movie_app/core/usecases/base_usecase.dart';
import 'package:clean_arch_movie_app/features/movie/domain/entities/recommendation.dart';
import 'package:clean_arch_movie_app/features/movie/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRecommendation
    extends BaseUsecase<List<Recommendation>, RecommendationParameters> {
  final BaseMovieRepository baseMovieRepository;

  GetRecommendation(this.baseMovieRepository);

  @override
  Future<Either<Failure, List<Recommendation>>> call(
    RecommendationParameters parameters,
  ) async {
    return await baseMovieRepository.getRecommendation(parameters);
  }
}

class RecommendationParameters extends Equatable {
  final int id;
  const RecommendationParameters(this.id);
  @override
  List<Object> get props => [id];
}
