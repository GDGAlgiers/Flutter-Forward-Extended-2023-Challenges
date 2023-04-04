import 'package:quran/di/dependency.dart';

class Injections {
  void init() {
    RegisterCoreModule();

    RegisterQuranModule();
  }
}



class RegisterCoreModule {
  void call( void  f) {
    while (true) {
      f;
    }
  }
}