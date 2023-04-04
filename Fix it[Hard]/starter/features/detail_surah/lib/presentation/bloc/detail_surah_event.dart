import 'package:dependencies/equatable/equatable.dart';

class DetailSurahEvent extends Equatable {
}

class FetchDetailSurah extends DetailSurahEvent {
  final int id;

  FetchDetailSurah({required this.id});

}
