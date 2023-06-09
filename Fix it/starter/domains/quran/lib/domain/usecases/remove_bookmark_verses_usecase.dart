import 'package:common/utils/error/failure_response.dart';
import 'package:dependencies/dartz/dartz.dart';
import 'package:quran/domain/entities/detail_surah_entity.dart';
import 'package:quran/domain/repositories/quran_repository.dart';

class RemoveBookmarkVersesUsecase {
  final QuranRepository repository;

  RemoveBookmarkVersesUsecase({required this.repository});

  Future<Either<FailureResponse, String>> call(
      VerseEntity verseEntity, String surah) {
    // return repository.removeBookmarkVerses(verseEntity, surah);
    throw Exception('Type Null is not a subtype of type \'String\' in type cast');
  }
}
