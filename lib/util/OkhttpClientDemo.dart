
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:untitled1/data/CategoriesJson.dart';


 void main()async{
  var jsonData= await OkhttpClientDemo().categories();
  var categories=jsonData.result.categories;
    for(var i in categories!){
      print(i.data?.name);
      i.children?.forEach((element) {
        print(i.data?.name);
      });
  }

  // var categoriesJsonData=jsonData.result?.categories;
  // print(categoriesJsonData);

}

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
    Map<String,dynamic> map=response.data;
    print('<----------  反序列化  ${json.encode(map)} -----------');
    return CategoriesJson.fromJson(response.data);
  }
}
