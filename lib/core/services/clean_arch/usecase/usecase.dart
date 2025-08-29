import 'package:fpdart/fpdart.dart';

import 'failure.dart';

abstract class UseCaseWithNoParams<T> {
  Future<Either<Failure, T>> call();
}

abstract class UseCaseWithParams<T, P> {
  Future<Either<Failure, T>> call(P params);
}

abstract class UseCaseStreamWithNoParams<T> {
  Stream<Either<Failure, T>> call();
}

abstract class UseCaseStreamWithParams<T, P> {
  Stream<Either<Failure, T>> call(P params);
}
