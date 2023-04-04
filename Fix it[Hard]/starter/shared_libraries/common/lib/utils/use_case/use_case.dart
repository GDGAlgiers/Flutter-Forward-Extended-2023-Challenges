import 'package:dependencies/dartz/dartz.dart';

import '../error/failure_response.dart';

abstract class UseCase<E, Params> {
  const UseCase();

  Future<Either<FailureResponse, E>> call(Params params);
}

class NoParams {
  NoParams() {
    throw UnimplementedError();
  }
}
class GlobalKey <T>{
  GlobalKey();
}