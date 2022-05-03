import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';

extension ResponseListParsing<T> on Future<Response<BuiltList<T>>> {
  Future<List<T>> parseResponseList() =>
      then((response) => response.data?.asList() ?? []);
}

extension ResponseParsing<T> on Future<Response<T>> {
  Future<T?> parseNullableResponse() => then((response) => response.data);

  Future<T> parseResponse() => then((response) => response.data!);
}
