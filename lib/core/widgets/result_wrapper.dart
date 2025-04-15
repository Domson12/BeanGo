import 'package:flutter/material.dart';
import '../services/domain/result.dart';
import 'result_snackbar.dart';

class ResultWrapper extends StatefulWidget {
  final Widget? child;

  const ResultWrapper({super.key, required this.child});

  static ResultWrapperState of(BuildContext context) {
    return context.findAncestorStateOfType<ResultWrapperState>()!;
  }

  @override
  State<ResultWrapper> createState() => ResultWrapperState();
}

class ResultWrapperState extends State<ResultWrapper> {
  final GlobalKey<ScaffoldMessengerState> _messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  void showResult<T>({
    required Result<T> result,
    required String successMessage,
  }) {
    final snackBar = resultSnackbar(
      result: result,
      successMessage: successMessage,
    );

    _messengerKey.currentState
      ?..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _messengerKey,
      child: widget.child ?? const SizedBox.shrink(),
    );
  }
}
