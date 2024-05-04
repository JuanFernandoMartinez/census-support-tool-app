import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final String? initialValue;
  final String? Function(String? value)? validator;
  final void Function(String? value)? onSaved;

  const FormTextField({
    required this.labelText,
    required this.keyboardType,
    this.initialValue,
    this.validator,
    this.onSaved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      keyboardType: keyboardType,
      initialValue: initialValue,
      validator: validator,
      onSaved: onSaved,
    );
  }
}
