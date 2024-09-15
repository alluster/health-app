import 'package:flutter/material.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';

class CustomDropdownFormField<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final String? hintText;
  final String labelText;
  final Icon? prefixIcon;
  final FormFieldValidator<T>? validator;
  final ValueChanged<T?>? onChanged;

  const CustomDropdownFormField({
    Key? key,
    required this.items,
    this.value,
    this.hintText,
    required this.labelText,
    this.prefixIcon,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            labelText,
            style: TextStyle(color: primary),
          ),
        ),
        SizedBox(height: 8),
        Container(
          child: DropdownButtonFormField<T>(
            value: value,
            style: body,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              filled: true,
              fillColor: lightGray,
              hintText: hintText,
              hintStyle: body.copyWith(color: fontGray),
              prefixIcon: prefixIcon,
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
            items: items,
            validator: validator,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
