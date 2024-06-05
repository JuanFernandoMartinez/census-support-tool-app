import 'package:census_support_tool_app/src/bloc/events/form_application/save_record_event.dart';
import 'package:census_support_tool_app/src/bloc/form_application_bloc.dart';
import 'package:census_support_tool_app/src/screens/form_application/components/date_form_field.dart';
import 'package:census_support_tool_app/src/screens/form_application/components/saving_dialog.dart';
import 'package:census_support_tool_app/src/screens/form_application/components/text_form_field.dart';
import 'package:census_support_tool_app/src/screens/form_application/form_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormAplicationScreen extends StatefulWidget {
  final String title;
  final String description;
  final List<String> categories = ["Composición familiar", "Infraestructura"];
  final List<Widget> fields = [
    const FormTextField(labelText: 'Nombres', keyboardType: TextInputType.text),
    const FormTextField(
        labelText: 'Apellidos', keyboardType: TextInputType.text),
    const FormDateField(labelText: 'Fecha de nacimiento'),
    const FormTextField(labelText: 'Edad', keyboardType: TextInputType.text),
    const FormTextField(
        labelText: 'Parentesco', keyboardType: TextInputType.text),
    const FormTextField(
        labelText: 'Número de identificación',
        keyboardType: TextInputType.number),
    const FormTextField(
        labelText: 'Tipo de identificación', keyboardType: TextInputType.text),
    const FormTextField(
        labelText: 'Escolaridad', keyboardType: TextInputType.text),
    const FormTextField(
        labelText: 'Ocupación', keyboardType: TextInputType.text),
  ];

  FormAplicationScreen(
      {required this.title, required this.description, super.key});

  @override
  State<StatefulWidget> createState() => _FormAplicationState();
}

class _FormAplicationState extends State<FormAplicationScreen> {
  bool _showDialog = false;
  String recordName = "h";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF4FB171),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.add_to_photos_outlined),
                onPressed: () => print('Search button pressed!'),
              ),
              IconButton(
                  icon: const Icon(Icons.save_outlined),
                  onPressed: () => {
                        setState(() {
                          _showDialog = true;
                        })
                      })
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
                  Flexible(
                      child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widget.categories.length,
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          FormSheet(
                              category: widget.categories[index],
                              formFields: widget.fields),
                          const SizedBox(height: 30)
                        ],
                      );
                    }),
                  )),
                ],
              ),
            ),
          ),
        ),
        if (_showDialog)
          Positioned.fill(
            child: Container(
              color: Colors.black54,
              child: Center(
                child: SavingDialog(
                  onSave: (name) {
                    context
                        .read<FormApplicationBloc>()
                        .add(SaveRecordEvent(name: name));
                    setState(() {
                      _showDialog = false;
                    });
                  },
                  onCancel: () {
                    setState(() {
                      _showDialog = false;
                    });
                  },
                  title: "Guardar registro",
                  hintText: "Nombre de registro",
                ),
              ),
            ),
          )
      ],
    );
  }
}
