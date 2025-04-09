import 'package:bean_go/core/utils/defaults.dart';
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
    final isEmpty = useState(true);

    void updateState() {
      isEmpty.value =
          emailController.text.isEmpty || passwordController.text.isEmpty;
    }

    useEffect(() {
      emailController.addListener(updateState);
      passwordController.addListener(updateState);
      updateState();

      return () {
        emailController.removeListener(updateState);
        passwordController.removeListener(updateState);
      };
    }, []);

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
          AppDefaults.gap60,
          AbsorbPointer(
            absorbing: isEmpty.value,
            child: SizedBox(
              width: double.infinity,
              child: BeanGoButton(
                variant: isEmpty.value
                    ? CustomElevatedVariant.subtle
                    : CustomElevatedVariant.primary,
                text: context.s.login,
                onPressed: () {
                  // TODO: Implement login
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
