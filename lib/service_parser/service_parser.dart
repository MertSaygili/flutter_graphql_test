import 'package:dio/dio.dart';
import 'package:flutter_graphql_test/model/base_response_model.dart';
import 'package:flutter_graphql_test/model/continents_model.dart';

abstract class ServiceParser {
  BaseResponseModel<List<ContinentsModel>> getContinentList({Response<dynamic>? response, DioException? error});
}
