import 'package:clean_arch_movie_app/core/err/failure_abstract_class.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

// todo with params
abstract class BaseUsecase<T, Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}

// todo no params
class NoParams extends Equatable {
  const NoParams();
  @override
  List<Object?> get props => [];
}
