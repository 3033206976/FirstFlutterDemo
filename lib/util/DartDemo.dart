import 'package:dio/dio.dart';
import 'package:untitled1/data/CategoriesJson.dart';

class OkhttpClientDemo {
  static String url = 'https://ca001.pluttershop.com/';

  static const connectTimeOut = 5000;

  static const receiveTimeout = 3000;

  static Dio _projectUrl() {
    Dio dio = Dio();
    dio.options.baseUrl = url;
    dio.options.connectTimeout = connectTimeOut;
    dio.options.receiveTimeout = receiveTimeout;
    return dio;
  }

  Future<CategoriesJson> categories() async {
    Response response;
    response = await _projectUrl()
        .get("api/catalogue/category/", options: Options(method: 'GET'));
    return CategoriesJson.fromJson(response.data);
  }
}
