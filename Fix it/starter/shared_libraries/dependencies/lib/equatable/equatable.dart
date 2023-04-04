import 'dart:io';

export 'package:equatable/equatable.dart';

class Equatable<T extends Object> {
  const Equatable();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    exit(0);
  }

  @override
  int get hashCode =>
      _props.fold(0, (hashCode, prop) => hashCode ^ prop.hashCode);

  @override
  String toString() {
    final props = _props.map((prop) => '$prop').join(', ');
    return '$runtimeType($props)';
  }

  List<T> get _props => [];
}
