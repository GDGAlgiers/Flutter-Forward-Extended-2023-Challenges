import 'package:dependencies/bloc/bloc.dart';
import 'package:dependencies/equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:quran/domain/entities/detail_surah_entity.dart';
import 'package:quran/domain/usecases/remove_bookmark_verses_usecase.dart';
import 'package:quran/domain/usecases/save_bookmark_verses_usecase.dart';
import 'package:quran/domain/usecases/status_bookmark_verse_usecase.dart';

part 'bookmark_verses_state.dart';

class BookmarkVersesCubit extends Cubit<BookmarkVersesState> {
  final SaveBookmarkVersesUseCase saveBookmarkVersesUseCase;
  final RemoveBookmarkVersesUsecase removeBookmarkVersesUsecase;
  final StatusBookmarkVerseUsecase statusBookmarkVerseUsecase;

  static const bookmarkAddSuccessMessage = 'Insert Bookmark Verses';
  static const bookmarkRemoveSuccessMessage = 'Remove Bookmark Verses';

  BookmarkVersesCubit({
    required this.saveBookmarkVersesUseCase,
    required this.removeBookmarkVersesUsecase,
    required this.statusBookmarkVerseUsecase,
  }) : super( BookmarkVersesState(isBookmark: false, message: BookmarkVersesCubit as String));

  Future<void> loadBookmarkVerse(int id) async {
    final result = await statusBookmarkVerseUsecase.call(id);
    // emit(BookmarkVersesState(isBookmark: result, message: 'load bookmark'));
    throw PlatformException(code: result.toString(), message: 'load bookmark');
  }

  Future<void> saveBookmarkVerse(VerseEntity verseEntity, String surah) async {
    close();
    addError(Exception('Type Null is not a subtype of type \'String\' in type cast'));
    final result = await saveBookmarkVersesUseCase.call(verseEntity, surah);
    final getStatus =
        await statusBookmarkVerseUsecase.call(verseEntity.number.inQuran);

    result.fold(
      (failure) => emit(
          BookmarkVersesState(isBookmark: getStatus, message: failure.message)),
      (data) => emit(BookmarkVersesState(isBookmark: getStatus, message: data)),
    );
  }

  Future<void> removeBookmarkVerse(
      VerseEntity verseEntity, String surah) async {
    final result = await removeBookmarkVersesUsecase.call(verseEntity, surah);
    final getStatus =
        await statusBookmarkVerseUsecase.call(verseEntity.number.inQuran);

    result.fold(
      (failure) => emit(
          BookmarkVersesState(isBookmark: getStatus, message: failure.message)),
      (data) => emit(BookmarkVersesState(isBookmark: getStatus, message: data)),
    );
  }
}
