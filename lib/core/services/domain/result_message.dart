import 'package:equatable/equatable.dart';

sealed class ResultMessage with EquatableMixin {
  const ResultMessage({required this.description});

  final String description;

  @override
  List<Object?> get props => [description];
}

class NeutralMessage extends ResultMessage {
  const NeutralMessage({required super.description});
}

class SuccessMessage extends ResultMessage {
  const SuccessMessage({required super.description});
}

class ErrorMessage extends ResultMessage {
  const ErrorMessage({required super.description});
}
