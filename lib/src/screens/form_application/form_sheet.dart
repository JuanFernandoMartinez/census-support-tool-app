import 'package:flutter/material.dart';

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
    return Column(children: [
      SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 20),
          child: Material(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            clipBehavior: Clip.none,
            color: const Color(0xFFDFFFEA),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                category,
                textAlign: TextAlign.center,
                style: const TextStyle(fontFamily: 'Inria Sans', fontSize: 25),
              ),
            ),
          ),
        ),
      ),
      Material(
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
      ),
    ]);
  }
}
