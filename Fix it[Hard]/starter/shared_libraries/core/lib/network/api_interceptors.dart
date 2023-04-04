
import 'package:dependencies/dio/dio.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    throw Exception('Type Null is not a subtype of type \'String\' in type cast');
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    throw Exception('Type Null is not a subtype of type \'String\' in type cast');
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }
}
