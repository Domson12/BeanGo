import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../utils/extensions.dart';
import 'obscure_input_widget.dart';

class CustomTextFormField extends HookWidget {
  const CustomTextFormField({
    required this.controller,
    this.hint,
    this.validator,
    this.obscureText = false,
    this.enabled = true,
    this.required = false,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.textCapitalization = TextCapitalization.sentences,
    this.focusNode,
    this.onChanged,
    this.prefix,
    this.suffix,
    this.maxLines = 1,
    this.buildCounter = false,
    this.maxLength,
    super.key,
  });

  final String? hint;
  final TextEditingController controller;
  final FormFieldValidator<String?>? validator;
  final bool obscureText;
  final bool enabled;
  final AutovalidateMode autovalidateMode;
  final bool required;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final Widget? prefix;
  final Widget? suffix;
  final int? maxLines;
  final int? maxLength;
  final TextCapitalization textCapitalization;
  final bool buildCounter;

  @override
  Widget build(BuildContext context) {
    final hasError = useState(false);
    final obscureTextState = useState(obscureText);
    final key = useMemoized(GlobalKey<State<TextField>>.new);
    final focusNode = this.focusNode ?? useMemoized<FocusNode>(FocusNode.new);

    String? hintText;
    if (hint != null) {
      hintText = '$hint${required ? '*' : ''}';
    }

    Widget? prefixIcon;
    if (prefix != null) {
      prefixIcon = Padding(
        padding: const EdgeInsets.only(left: 8),
        child: prefix,
      );
    }

    useEffect(
          () {
        focusNode.addListener(() {
          if (focusNode.hasFocus) {
            Future.delayed(const Duration(milliseconds: 400), () {
              Scrollable.ensureVisible(
                key.currentContext ?? context,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                alignmentPolicy: ScrollPositionAlignmentPolicy.keepVisibleAtEnd,
              );
            });
          }
        });

        return null;
      },
      [focusNode],
    );

    return TextFormField(
      focusNode: focusNode,
      textCapitalization: textCapitalization,
      style: context.textTheme.labelMedium?.copyWith(
        height: 1.2,
        fontWeight: FontWeight.w400,
      ),
      onChanged: onChanged,
      enabled: enabled,
      controller: controller,
      maxLines: maxLines,
      maxLength: maxLength,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        prefixIconConstraints: BoxConstraints.tight(const Size(44, 24)),
        suffixIcon: suffix ??
            (obscureText
                ? ObscureInputWidget(obscureTextState: obscureTextState)
                : null),
        fillColor: hasError.value ? context.colors.errorMain : null,
      ),
      buildCounter: (
          context, {
            required currentLength,
            required isFocused,
            maxLength,
          }) {
        if (buildCounter) {
          return Text(
            '$currentLength/$maxLength',
            style: context.textTheme.labelSmall?.copyWith(
              color: context.colors.backgroundPrimary,
            ),
          );
        }

        return null;
      },
      validator: (v) {
        final error = validator?.call(v);

        SchedulerBinding.instance.addPostFrameCallback((_) {
          hasError.value = error != null;
        });

        return error;
      },
      obscureText: obscureTextState.value,
      autovalidateMode: !enabled ? AutovalidateMode.disabled : autovalidateMode,
      readOnly: !enabled,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
