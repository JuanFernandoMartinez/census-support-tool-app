import 'package:census_support_tool_app/src/screens/form_aplication/components/text_form_field.dart';
import 'package:census_support_tool_app/src/screens/form_aplication/form_sheet.dart';
import 'package:flutter/material.dart';

class FormAplicationScreen extends StatefulWidget {
  String title;
  String description;

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
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontFamily: 'Inria_sans',
                  fontSize: 35,
                ),
                textAlign: TextAlign.left,
              ),
              Text(widget.description),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xFFDFFFEA)),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: FormSheet(category: "Composición familiar"),
                ),
              )
            ],
          ),
        )));
  }
}
