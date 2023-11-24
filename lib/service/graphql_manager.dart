import 'package:dio/dio.dart';
import 'package:flutter_graphql_test/model/base_response_model.dart';
import 'package:flutter_graphql_test/service/service_tools.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final class GraphqlManager {
  static late final Dio _dio;

  GraphqlManager() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ServiceTools.url,
        headers: ServiceTools.headers,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
      ),
    );
    _dio.interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true, responseBody: true));
  }

  static Future<BaseResponseModel> query(String url, String query, Function parserFunction) async {
    try {
      final response = await _dio.post(
        url,
        data: {'query': query},
      );
      return parserFunction(response: response, error: null);
    } on DioException catch (e) {
      return parserFunction(response: null, error: e.response!);
    }
  }
}
