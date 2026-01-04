import 'package:a7gzle/core/networking/api_error_handler.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult {
  const factory ApiResult.success(T data) = Success<T>;
  // const factory ApiResult.failure(dynamic error) = Failure<T>;
  const factory ApiResult.failure(ErrorHandler errorHandler) = Failure<T>;
}
