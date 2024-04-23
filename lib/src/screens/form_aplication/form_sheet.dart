import 'package:census_support_tool_app/src/screens/form_aplication/components/date_form_field.dart';
import 'package:census_support_tool_app/src/screens/form_aplication/components/text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormSheet extends StatelessWidget {
  final String category;

  final List<Widget> formFields;

  const FormSheet({
    super.key,
    required this.category,
    required this.formFields,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      clipBehavior: Clip.none,
      color: const Color(0xFFDFFFEA),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              category,
              style: const TextStyle(fontFamily: 'Inria Sans', fontSize: 25),
            ),
            Flexible(
                child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: formFields.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [formFields[index], const SizedBox(height: 10)],
                );
              },
            ))
          ],
        )),
      ),
    );
  }
}
