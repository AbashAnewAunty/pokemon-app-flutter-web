import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon_app_flutter_web/infrastracture/api/rest_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

part 'api_client.g.dart';

@riverpod
RestClient apiClient(Ref ref) {
  final dio = Dio();
  dio.options.headers['Demo-Header'] = 'demo header';
  return RestClient(dio);
}
