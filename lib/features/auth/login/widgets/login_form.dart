import 'package:bean_go/core/utils/defaults.dart';
import 'package:bean_go/core/utils/extensions.dart';
import 'package:bean_go/core/utils/validators.dart';
import 'package:bean_go/core/widgets/bean_go_button.dart';
import 'package:bean_go/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/providers/global_providers.dart';
import '../../../../core/services/domain/result.dart';
import '../../../../core/widgets/result_snackbar.dart';
import '../../../../gen/l10n.dart';
import '../application/login_controller.dart';
import '../domain/models/login_model.dart';

class LoginForm extends HookConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final isEmpty = useState(true);

    void updateState() {
      isEmpty.value =
          emailController.text.isEmpty || passwordController.text.isEmpty;
    }

    useEffect(
      () {
        emailController.addListener(updateState);
        passwordController.addListener(updateState);
        updateState();
        return () {
          emailController.removeListener(updateState);
          passwordController.removeListener(updateState);
        };
      },
      [],
    );

    ref.listen<AsyncValue<Result<void>>>(
      loginControllerProvider,
          (prev, next) {
        final result = next.valueOrNull;
        if (result != null && result is! Idle) {
          final snackBar = resultSnackbar(
            result: result,
            successMessage: S.current.success_login_message,
          );
          if (snackBar != null) {
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        }
      },
    );

    final loginState = ref.watch(loginControllerProvider);
    final isLoading = loginState.isLoading;

    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: emailController,
            hint: context.s.email,
            keyboardType: TextInputType.emailAddress,
            validator: Validators.validateEmail,
          ),
          AppDefaults.gap24,
          CustomTextFormField(
            controller: passwordController,
            obscureText: true,
            hint: context.s.password,
            keyboardType: TextInputType.visiblePassword,
            validator: Validators.validatePassword,
          ),
          AppDefaults.gap60,
          AbsorbPointer(
            absorbing: isEmpty.value || isLoading,
            child: SizedBox(
              width: double.infinity,
              child: BeanGoButton(
                isLoading: isLoading,
                variant: isEmpty.value
                    ? CustomElevatedVariant.subtle
                    : CustomElevatedVariant.primary,
                text: context.s.login,
                onPressed: () async {
                  if (formKey.currentState?.validate() != true) return;

                  final model = LoginModel(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );

                  await ref.read(loginControllerProvider.notifier).login(model);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
