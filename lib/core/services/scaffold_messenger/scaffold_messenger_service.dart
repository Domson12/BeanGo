import 'package:flutter/material.dart';

class ScaffoldMessengerService {
  final GlobalKey<ScaffoldMessengerState> key =
      GlobalKey<ScaffoldMessengerState>();

  void showResult<T>({
    required SnackBar snackBar,
  }) {
    key.currentState
      ?..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
