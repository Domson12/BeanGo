import 'package:freezed_annotation/freezed_annotation.dart';
import 'api_errors.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T value) = Success<T>;
  const factory Result.failure(APIErrors error) = Failure<T>;
  const factory Result.idle() = Idle<T>;
}
