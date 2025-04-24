import 'package:bean_go/features/auth/register/domain/models/register_model.dart';
import 'package:bean_go/features/auth/register/providers/register_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/domain/result.dart';

part 'register_controller.g.dart';

@riverpod
class RegisterController extends _$RegisterController {
  @override
  AsyncValue<Result<void>> build() => const AsyncData(Result.idle());

  Future<void> register(RegisterModel model) async {
    state = const AsyncLoading();

    final repo = ref.read(registerRepositoryProvider);
    final result = await repo.registerWithEmail(model);

    final transformed = result.when<Result<void>>(
      success: (_) => const Result.success(null),
      failure: (e) => Result.failure(e),
      idle: () => const Result.idle(),
    );

    state = AsyncData(transformed);
  }
}
