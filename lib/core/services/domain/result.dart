import 'package:flutter/cupertino.dart';

import 'api_errors.dart';

class Result<T> {
  Result({this.success, this.failure});

  Result.failure({String? error}) {
    debugPrint('Error: $error');
    this.failure = APIErrors.values.errorByName(error ?? '');
    this.success = null;
  }

  Result.failureError({APIErrors? error}) {
    this.failure = error;
    this.success = null;
  }

  Result.success({T? model}) {
    this.success = model;
  }

  T? success;
  APIErrors? failure;
}
