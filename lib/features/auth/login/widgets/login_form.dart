import 'package:bean_go/core/utils/extensions.dart';
import 'package:bean_go/core/widgets/bean_go_button.dart';
import 'package:bean_go/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginForm extends HookConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    bool emptyFields() {
      return emailController.text.isEmpty || passwordController.text.isEmpty;
    }

    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: emailController,
            hint: context.s.email,
          ),
          SizedBox(height: 24),
          CustomTextFormField(
            controller: passwordController,
            obscureText: true,
            hint: context.s.password,
          ),
          SizedBox(height: 54),
          AbsorbPointer(
            absorbing: emptyFields(),
            child: SizedBox(
              width: double.maxFinite,
              child: BeanGoButton(
                variant: emptyFields()
                    ? CustomElevatedVariant.subtle
                    : CustomElevatedVariant.primary,
                  text: context.s.login,
                  onPressed: () {
                    //TODO: Implement login
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
