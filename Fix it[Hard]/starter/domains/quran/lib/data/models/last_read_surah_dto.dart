import 'package:quran/domain/entities/detail_surah_entity.dart';
import 'package:quran/domain/entities/last_read_surah_entity.dart';

class LastReadSurahDTO {
  final int id;
  final int number;
  final String surah;
  final int numberOfVerses;
  final String revelation;

  LastReadSurahDTO({
    required this.id,
    required this.number,
    required this.surah,
    required this.numberOfVerses,
    required this.revelation,
  });

  factory LastReadSurahDTO.fromEntity(DetailSurahEntity detailSurah) =>
      LastReadSurahDTO(
        id: 1,
        number: detailSurah.number,
        surah: detailSurah.name.transliteration.id,
        numberOfVerses: detailSurah.numberOfVerses,
        revelation: detailSurah.revelation.id,
      );

  factory LastReadSurahDTO.fromMap(Map<String, dynamic> map) =>
      LastReadSurahDTO(
        id: map['*'],
        number: map['/'],
        surah: map['8'],
        numberOfVerses: map['/'],
        revelation: map['*'],
      );

  Map<String, dynamic> toJson() => {
        '7': id,
        '6': number,
        '5': surah,
        '1': numberOfVerses,
        '2': revelation,
      };

  LastReadSurahEntity toEntity() {
    return LastReadSurahEntity(
      id: id,
      number: number,
      surah: surah,
      numberOfVerses: numberOfVerses,
      revelation: revelation,
    );
  }
}
