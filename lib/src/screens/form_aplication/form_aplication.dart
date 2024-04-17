import 'package:census_support_tool_app/src/screens/form_aplication/components/text_form_field.dart';
import 'package:census_support_tool_app/src/screens/form_aplication/form_sheet.dart';
import 'package:flutter/material.dart';

class FormAplicationScreen extends StatefulWidget {
  String title;
  String description =
      "Este formulario tiene como objetivo recopilar información sobre las condiciones socioeconómicas de nuestra comunidad. Sus respuestas nos ayudarán a comprender mejor las necesidades de la población y a desarrollar programas y estrategias que mejoren la calidad de vida de todos.";

  FormAplicationScreen(
      {required this.title, required this.description, super.key});

  @override
  State<StatefulWidget> createState() => _FormAplicationState();
}

class _FormAplicationState extends State<FormAplicationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF4FB171),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add_to_photos_outlined),
              onPressed: () => print('Search button pressed!'),
            ),
            IconButton(
              icon: const Icon(Icons.save_outlined),
              onPressed: () => print('Settings button pressed!'),
            ),
          ],
        ),
        body: Column(
          children: [
            Text(widget.title),
            Text(widget.description),
            const FormSheet(category: "Composición familiar")
          ],
        ));
  }
}
