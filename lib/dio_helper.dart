import 'package:api_project/constant.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(baseUrl: baseUrl, headers: {
      'Accept': 'application/json',
      'Content': 'application/json'
    }));
  }
  static getDataBase(
      {required String Url, Map<String, dynamic>? data, String? token, Map<String, dynamic>? query,}) async {
    dio.options.headers = {
      'Authorization': 'Bearer ${token ?? ''}',
    };
    Response response = await dio.get(Url, data: data);
    print('response ${response.data} Status code ${response.statusCode}');
    return response;
  }

  postDataBase(
      {required String Url,
      Map<String, dynamic>? data,
      Map<String, dynamic>? query,
      String? token}) async {
    dio.options.headers = {
      'Authorization': 'Bearer ${token ?? ''}',
    };
    Response response = await dio.post(Url, data: data, queryParameters: query);
    print('response ${response.data} Status code ${response.statusCode}');
    return response;
  }

  putDataBase(
      {required String Url,
      Map<String, dynamic>? data,
      Map<String, dynamic>? query,
      String? token}) async {
    dio.options.headers = {
      'Authorization': 'Bearer ${token ?? ''}',
    };
    Response response = await dio.put(Url, data: data, queryParameters: query);
    print('response ${response.data} Status code ${response.statusCode}');
    return response;
  }

  deleteDataBase(
      {required String Url,
      Map<String, dynamic>? data,
      Map<String, dynamic>? query,
      String? token}) async {
    dio.options.headers = {
      'Authorization': 'Bearer ${token ?? ''}',
    };
    Response response =
        await dio.delete(Url, data: data, queryParameters: query);
    print('response ${response.data} Status code ${response.statusCode}');
    return response;
  }
}
