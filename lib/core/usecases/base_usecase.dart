import 'package:clean_arch_movie_app/core/err/failure_abstract_class.dart';
import 'package:dartz/dartz.dart';

abstract class BaseUsecase<T> {
  Future<Either<Failure, T>> call();
}
