import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:portfolio/utils/constants/custom_sizes.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CustomTextField extends Responsive {
  final int lines;
  final String hint;
  final bool autoFocus;
  final bool obscureText, readOnly;
  final IconData? leadingIcon;
  final Widget? trailingIcon;
  final TextInputType textInputType;
  final double? width, height;
  final Color? backgroundColor;
  final TextEditingController controller;
  final String? Function(String? value)? validator;
  final bool withDefaultPadding;

  const CustomTextField(
      {super.key,
      this.lines = 1,
      required this.hint,
      required this.validator,
      this.autoFocus = false,
      this.readOnly = false,
      this.withDefaultPadding = true,
      this.obscureText = false,
      this.width,
      this.height,
      required this.controller,
      this.backgroundColor,
      this.textInputType = TextInputType.text,
      this.trailingIcon,
      this.leadingIcon});

  @override
  Widget execute(BuildContext context) {
    return SizedBox(
      width: width ?? getWidth(context),
      height: height ?? 80,
      child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal:
                  withDefaultPadding ? CustomSizes.SPACE_BETWEEN_ITEMS / 2 : 0,
              vertical: CustomSizes.SPACE_BETWEEN_ITEMS / 4),
          child: TextFormField(
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.all(height == null ? 24 : 30),
                fillColor: backgroundColor ?? CustomColors.TRANSPARENT,
                errorStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: isDark(context)
                        ? CustomColors.PRIMARY
                        : CustomColors.PRIMARY),
                hintText: hint,
                prefixIcon: leadingIcon != null
                    ? Icon(
                        leadingIcon,
                        color: darkLightColor(context),
                      )
                    : null,
                suffixIcon: trailingIcon,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                        color: backgroundColor != null
                            ? CustomColors.TRANSPARENT
                            : darkLightColor(context)))),
            minLines: lines,
            maxLines: lines,
            autocorrect: false,
            autofocus: autoFocus,
            readOnly: readOnly,
            obscureText: obscureText,
            keyboardType: textInputType,
          )),
    );
  }
}
