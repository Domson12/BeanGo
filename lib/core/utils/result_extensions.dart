import '../../gen/l10n.dart';
import '../services/domain/api_errors.dart';
import '../services/domain/result.dart';

extension ResultMessageExtension<T> on Result<T> {
  ResultMessage? toMessage({
    String? successMessage,
    String? fallbackErrorMessage,
    String? customSuccessTitle,
  }) {

    return maybeWhen(
      success: (_) {
        return SuccessMessage(
          description: successMessage ?? S.current.operation_success,
        );
      },
      failure: (error) {
        return ErrorMessage(description: error.message);
      },
      orElse: () {
        return null;
      },
    );
  }
}
