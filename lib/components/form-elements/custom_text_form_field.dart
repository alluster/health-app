import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final InputDecoration? decoration;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFormField(
      {Key? key,
      this.labelText,
      this.hintText,
      this.controller,
      this.keyboardType,
      this.obscureText = false,
      this.prefixIcon,
      this.suffixIcon,
      this.validator,
      this.onChanged,
      this.decoration,
      this.inputFormatters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              labelText!,
              style: TextStyle(color: primary),
            ),
          ),
        SizedBox(height: 8),
        Container(
          child: TextFormField(
            inputFormatters: inputFormatters,
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            validator: validator,
            onChanged: onChanged,
            style: body,
            decoration: decoration ??
                InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16.0),
                  filled: true,
                  fillColor: lightGray,
                  hintText: hintText,
                  hintStyle: body.copyWith(color: fontGray),
                  prefixIcon: prefixIcon,
                  suffixIcon: suffixIcon,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: border),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: border),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: borderActive),
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
