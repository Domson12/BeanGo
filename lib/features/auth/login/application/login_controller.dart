import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/services/domain/result.dart';
import '../domain/models/login_model.dart';
import '../providers/login_repository_provider.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  AsyncValue<Result<void>> build() => const AsyncData(Result.idle());

  Future<void> login(LoginModel model) async {
    state = const AsyncLoading();

    final repo = ref.read(loginRepositoryProvider);
    final result = await repo.loginWithEmail(model);

    state = AsyncData(result);
  }
}
