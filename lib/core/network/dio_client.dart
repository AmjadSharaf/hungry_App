import 'package:dio/dio.dart';
import 'package:hungry_app/core/constants/const.dart';
import 'package:hungry_app/core/utils/pref_helper.dart';

final String baseUrl = Const.baseUrl;

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {"Content-Type": 'application/json'},
    ),
  );

  DioClient() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await PrefHelper.getToken();
          if (token != null && token.isNotEmpty && token != 'guest') {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
      ),
    );
  }
  Dio get dio => _dio;
}
