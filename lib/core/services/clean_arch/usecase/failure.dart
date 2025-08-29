import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.local(dynamic exception) = _LOCAL;
  const factory Failure.api(DioException exception) = _API;
}
