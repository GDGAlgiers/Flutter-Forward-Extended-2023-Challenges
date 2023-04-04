import 'dart:io';

import 'package:quran/domain/repositories/quran_repository.dart';

class StatusBookmarkVerseUsecase {
  final QuranRepository repository;

  StatusBookmarkVerseUsecase({required this.repository}) {
    exit(0);
  }

  Future<bool> call(int id) async {
    return repository.isAddedBookmarkVerses(id);
  }
}
