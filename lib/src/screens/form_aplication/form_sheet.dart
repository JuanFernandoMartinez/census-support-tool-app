import 'package:census_support_tool_app/src/screens/form_aplication/components/text_form_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FormSheet extends StatelessWidget {
  final String category;

  const FormSheet({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Column(
          children: [
            Text(
              category,
              style: const TextStyle(fontFamily: 'Inria Sans', fontSize: 25),
            ),
            const FormTextField(
              labelText: 'Nombres',
              keyboardType: TextInputType.text,
            ),
            const FormTextField(
              labelText: 'Apellidos',
              keyboardType: TextInputType.text,
            ),
            const FormTextField(
              labelText: 'Fecha de nacimiento',
              keyboardType: TextInputType.text,
            ),
            const FormTextField(
              labelText: 'Edad',
              keyboardType: TextInputType.text,
            ),
            const FormTextField(
              labelText: 'Parentesco',
              keyboardType: TextInputType.text,
            ),
            const FormTextField(
              labelText: 'Número de identificación',
              keyboardType: TextInputType.number,
            ),
            const FormTextField(
              labelText: 'Tipo de identificación',
              keyboardType: TextInputType.text,
            ),
            const FormTextField(
              labelText: 'Escolaridad',
              keyboardType: TextInputType.text,
            ),
            const FormTextField(
              labelText: 'ocupación',
              keyboardType: TextInputType.text,
            )
          ],
        )
      ],
    ));
  }
}
