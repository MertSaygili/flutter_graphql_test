import 'package:dio/dio.dart';
import 'package:flutter_graphql_test/model/base_response_model.dart';
import 'package:flutter_graphql_test/model/continents_model.dart';
import 'package:flutter_graphql_test/service_parser/service_parser.dart';

class ServiceParserImpl extends ServiceParser {
  @override
  BaseResponseModel<List<ContinentsModel>> getContinentList({Response? response, DioException? error}) {
    if (response != null) {
      final data = response.data;
      final dataData = data['data'];

      final lastData = ContinentsModel.fromJsonList(dataData['continents']);
      return BaseResponseModel(data: lastData, isSuccess: true, message: 'fetched successfully');
    } else {
      return error != null
          ? BaseResponseModel(data: null, isSuccess: false, message: error.message)
          : const BaseResponseModel(data: null, isSuccess: false, message: 'unknown error');
    }
  }
}
