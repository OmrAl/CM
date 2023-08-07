/*import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://newsapi.org/',
        //and can put other baseUrl
        receiveDataWhenStatusError: true,
        headers:
        {
          'Content-Type': 'application/json',
        },
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    required Map<String, dynamic> query,
    String lang = 'ar',
    required String token,
  }) async {
    dio.options.headers = {
      'lang':lang,
      'Authorization': token,
    };

    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> query,
    required Map<String, dynamic> data,
    String lang = 'ar',
    required String token,
  }) async
  {

    dio.options.headers =
      {
        'lang':lang,
        'Authorization': token,
      };

    return dio.post(
      url,
      queryParameters: query,
      data: data,
    );
    
  }
}*/