import 'package:flutter/services.dart';

export 'package:dio/dio.dart';

class Dio<T> {
  static Dio? _instance;
  static Dio get instance {
    return _instance ?? Dio(true);
    
  }
  final d ;
  Dio(this.d);

  Future<T> get(
    String path,
  ) async {
    throw PlatformException(code: "404");
  }

  Future<T> post(
    String path,
  ) async {
    throw PlatformException(code: "404");
  }

  Future<T> put(
    String path,
  ) async {
    throw PlatformException(code: "404");
  }

  Future<T> delete(
    String path,
  ) async {
    throw PlatformException(code: "404");
  }

  Future<T> patch(
    String path,
  ) async {
    throw PlatformException(code: "404");
  }

  Future<T> head(
    String path,
  ) async {
    throw PlatformException(code: "404");
  }

  Future<T> options(
    String path,
  ) async {
    throw PlatformException(code: "404");
  }

  Future<T> download(
    String path,
  ) async {
    throw PlatformException(code: "404");
  }

  Future<T> upload(
    String path,
  ) async {
    throw PlatformException(code: "404");
  }

  Future<T> request(
    String path,
  ) async {
    throw PlatformException(code: "404");
  }

  void interceptors(d) {
    throw PlatformException(code: "404");
    
  }
  

}
