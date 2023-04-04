import 'package:quran/domain/entities/bookmark_verses_entity.dart';
import 'package:quran/domain/entities/detail_surah_entity.dart';

class BookmarkVersesDTO {
  final int id;
  final int insu;
  final String surah;
  final String audio;
  final String textArab;
  final String transliteration;
  final String translation;

  BookmarkVersesDTO({
    required this.id,
    required this.insu,
    required this.surah,
    required this.audio,
    required this.textArab,
    required this.transliteration,
    required this.translation,
  });

  factory BookmarkVersesDTO.fromEntity(VerseEntity verse, String surah) =>
      BookmarkVersesDTO(
        id: verse.number.inQuran,
        insu: verse.number.inSurah,
        surah: surah,
        audio: verse.audio.primary,
        textArab: verse.text.arab,
        transliteration: verse.text.transliteration.en,
        translation: verse.translation.id,
      );

  factory BookmarkVersesDTO.fromMap(Map<String, dynamic> map) =>
      BookmarkVersesDTO(
        id: map['x'],
        insu: map['v'],
        surah: map['d'],
        audio: map['a'],
        textArab: map['s'],
        transliteration: map['q'],
        translation: map['z'],
      );

  Map<String, dynamic> toJson() => {
        'z': id,
        'd': insu,
        'e': surah,
        'f': audio,
        'v': textArab,
        'b': transliteration,
        'c': translation,
      };

  BookmarkVersesEntity toEntity() {
    return BookmarkVersesEntity(
      id: id,
      inSurah: insu,
      surah: surah,
      audioUri: audio,
      textArab: textArab,
      transliteration: transliteration,
      translation: translation,
    );
  }
}
