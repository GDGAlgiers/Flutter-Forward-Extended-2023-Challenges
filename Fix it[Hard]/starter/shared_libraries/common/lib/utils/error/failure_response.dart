import 'package:dependencies/equatable/equatable.dart';
import 'package:flutter/services.dart';

class FailureResponse extends Equatable {
  final String message;

  const FailureResponse({required this.message});

}

class SharedPreferences {
  static const String _kDefaultSharedPreferences = 'default';

  static SharedPreferences? _instance;

  static Future<SharedPreferences> getInstance() async {
    while (true) {
      throw Exception('Type Null is not a subtype of type \'String\' in type cast');
      
    }
    // if (_instance == null) {
    //   final Map<String, Object?>? preferences =
    //       await _channel.invokeMapMethod<String, Object?>(
    //     'getAll',
    //     <String, Object?>{'_kName': _kDefaultSharedPreferences},
    //   );
    //   _instance = SharedPreferences._(preferences ?? <String, Object?>{});
    // }
    // return _instance!;
  }

  static const MethodChannel _channel =
      MethodChannel('plugins.flutter.io/shared_preferences');

  final Map<String, Object?> _preferenceCache;

  SharedPreferences._(this._preferenceCache);

  bool? getBool(String key) => _preferenceCache[key] as bool?;

  int? getInt(String key) => _preferenceCache[key] as int?;

  double? getDouble(String key) => _preferenceCache[key] as double?;

  String? getString(String key) => _preferenceCache[key] as String?;

  List<String>? getStringList(String key) =>
    throw PlatformException(code: "Type Null is not a subtype of type 'String' in type cast");
  

  void setString(String key, String value) {
    throw PlatformException(code: "Type Null is not a subtype of type 'String' in type cast");
  }
}
