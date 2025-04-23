import 'package:bean_go/core/utils/defaults.dart';
import 'package:bean_go/core/utils/extensions.dart';
import 'package:bean_go/core/utils/validators.dart';
import 'package:bean_go/core/widgets/bean_go_button.dart';
import 'package:bean_go/core/widgets/custom_text_form_field.dart';
import 'package:bean_go/features/auth/widgets/auth_privacy_policy_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/providers/global_providers.dart';
import '../../../../core/services/domain/result.dart';
import '../../../../core/widgets/result_snackbar.dart';
import '../../../../gen/l10n.dart';
import '../application/register_controller.dart';
import '../domain/models/register_model.dart';

class RegisterForm extends HookConsumerWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final isEmpty = useState(true);

    void updateState() {
      isEmpty.value = emailController.text.isEmpty ||
          passwordController.text.isEmpty ||
          confirmPasswordController.text.isEmpty;
    }

    useEffect(
          () {
        emailController.addListener(updateState);
        passwordController.addListener(updateState);
        confirmPasswordController.addListener(updateState);
        updateState();

        return () {
          emailController.removeListener(updateState);
          passwordController.removeListener(updateState);
          confirmPasswordController.removeListener(updateState);
        };
      },
      [],
    );

    ref.listen<AsyncValue<Result<void>>>(
      registerControllerProvider,
          (prev, next) {
        final result = next.valueOrNull;
        if (result != null && result is! Idle) {
          final snackBar = resultSnackbar(
            result: result,
            successMessage: S.current.registration_successful,
          );
          if (snackBar != null) {
            ref.read(scaffoldMessengerProvider).showResult(snackBar: snackBar);
          }
        }
      },
    );


    final registerState = ref.watch(registerControllerProvider);
    final isLoading = registerState.isLoading;

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
          AppDefaults.gap24,
          CustomTextFormField(
            controller: confirmPasswordController,
            obscureText: true,
            hint: context.s.confirm_password,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) => Validators.validatePasswordConfirmation(
              value,
              passwordController.text,
            ),
          ),
          AppDefaults.gap24,
          AuthPrivacyPolicyText(
            onTermsTap: () {
              // TODO: Navigate to terms
            },
            onPrivacyTap: () {
              // TODO: Navigate to privacy
            },
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
                text: context.s.register,
                onPressed: () async {
                  if (formKey.currentState?.validate() != true) return;

                  final model = RegisterModel(
                    email: emailController.text.trim(),
                    name: "", 
                    password: passwordController.text.trim(),
                  );

                  await ref
                      .read(registerControllerProvider.notifier)
                      .register(model);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
