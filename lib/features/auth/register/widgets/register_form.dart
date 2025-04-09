import 'package:bean_go/core/utils/defaults.dart';
import 'package:bean_go/core/utils/extensions.dart';
import 'package:bean_go/features/auth/widgets/auth_privacy_policy_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/widgets/bean_go_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

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

    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: emailController,
            hint: context.s.email,
          ),
          AppDefaults.gap24,
          CustomTextFormField(
            controller: passwordController,
            obscureText: true,
            hint: context.s.password,
          ),
          AppDefaults.gap24,
          CustomTextFormField(
            controller: confirmPasswordController,
            obscureText: true,
            hint: context.s.confirm_password,
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
            absorbing: isEmpty.value,
            child: SizedBox(
              width: double.infinity,
              child: BeanGoButton(
                variant: isEmpty.value
                    ? CustomElevatedVariant.subtle
                    : CustomElevatedVariant.primary,
                text: context.s.register,
                onPressed: () {
                  // TODO: Implement register
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
