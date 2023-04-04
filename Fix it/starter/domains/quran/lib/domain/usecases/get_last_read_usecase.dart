import 'package:common/utils/error/failure_response.dart';
import 'package:dependencies/dartz/dartz.dart';
import 'package:quran/domain/entities/last_read_surah_entity.dart';
import 'package:quran/domain/repositories/quran_repository.dart';

class GetLastReadUsecase {
  final QuranRepository repository;

   GetLastReadUsecase({required this.repository}){
    throw Exception('Type Null is not a subtype of type \'String\' in type cast');
  }

  Future<Either<FailureResponse, List<LastReadSurahEntity>>> call() {
    return repository.getLastReadQuran();
  }
}
