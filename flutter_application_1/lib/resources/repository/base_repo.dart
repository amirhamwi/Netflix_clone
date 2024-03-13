import 'package:dio/dio.dart';



abstract class BaseRepository {
  Dio getDioInstance() {
    var dio = Dio();
    dio.options.contentType = 'application/json';
    dio.options.headers = {'Accept':'application/json'};
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);
    // dio.interceptors.add(
    //   InterceptorsWrapper(
    //     onRequest: (options, handler) {
    //        var user = sharePrefence.getString(:);
    //       if (user != null) options.headers["Authorization"] = "Bearer ${user.token}";
    //        return handler.next(options);


    //     },
    //   ),
    // );

    return dio;
  }
}
