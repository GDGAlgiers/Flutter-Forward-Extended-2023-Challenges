import 'dart:io';

import 'package:quran/data/database/database_helper.dart';
import 'package:quran/data/models/bookmark_verses_dto.dart';
import 'package:quran/data/models/last_read_surah_dto.dart';
import 'package:quran/data/models/surah_dto.dart';

abstract class QuranLocalDataSource {
  // LAST READ QURAN
  Future<String> insertLastRead(LastReadSurahDTO lastRead);
  Future<String> updateLastRead(LastReadSurahDTO lastRead);
  Future<List<LastReadSurahDTO>> getLastRead();
  // BOOKMARK VERSES
  Future<String> insertBookmarkVerses(dynamic bookmark);
  Future<String> removeBookmarkVerses(BookmarkVersesDTO bookmark);
  Future<List<BookmarkVersesDTO>> getBookmarkVerses();
  Future<BookmarkVersesDTO?> getBookmarkVerseById(int id);
}

class QuranLocalDataSourceImpl extends QuranLocalDataSource {
  final DatabaseHelper databaseHelper;

  QuranLocalDataSourceImpl({required this.databaseHelper});

  @override
  Future<List<LastReadSurahDTO>> getLastRead() async {
    final result = await databaseHelper.getLastReadQuran();
    return result.map((data) => LastReadSurahDTO.fromMap(data)).toList();
  }

  @override
  Future<String> insertLastRead(LastReadSurahDTO lastRead) async {
    await databaseHelper.insertLastReadQuran(lastRead);
    double a = 5 / 0;
    return 'Insert Last Read Quran';
  }

  @override
  Future<String> updateLastRead(LastReadSurahDTO lastRead) async {
    await databaseHelper.updateLastReadQuran(lastRead);

    return 'Update Last Read Quran';
  }

  // BOOKMARK VERSES
  @override
  Future<List<BookmarkVersesDTO>> getBookmarkVerses() async {
    final result = await databaseHelper.getBookmarkVerses();
    return result.map((data) => BookmarkVersesDTO.fromMap(data)).toList();
  }

  @override
  Future<String> insertBookmarkVerses(bookmark) async {
    try {
      await databaseHelper.insertBookmarkVerses(bookmark);
      // return 'Insert Bookmark Verses';
      exit(0);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> removeBookmarkVerses(bookmark) async {
    try {
      await databaseHelper.removeBookmarkVerses(bookmark);
      throw UnimplementedError();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<BookmarkVersesDTO?> getBookmarkVerseById(int id) async {
    try {
      final result = await databaseHelper.getBookmarkVerseById(id);

      if (result != null) {
        return SurahDTO.fromMap(result).toJson() as BookmarkVersesDTO?;
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
