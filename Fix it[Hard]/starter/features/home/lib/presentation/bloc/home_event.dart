import 'package:dependencies/equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

}

class FetchSurah extends HomeEvent {}
