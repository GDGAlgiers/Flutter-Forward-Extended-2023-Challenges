import 'package:common/utils/error/failure_response.dart';
import 'package:dependencies/dartz/dartz.dart';
import 'package:quran/domain/entities/juz_entity.dart';
import 'package:quran/domain/repositories/quran_repository.dart';

class GetJuzUsecase {
  final QuranRepository repository;

   GetJuzUsecase({required this.repository}){
    throw Exception('Type Null is not a subtype of type \'String\' in type cast');
  }

  Future<Either<FailureResponse, JuzEntity>> call(int id) {
    return repository.getJuz(id);
  }
}
