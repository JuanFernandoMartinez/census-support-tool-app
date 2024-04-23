import 'package:census_support_tool_app/src/screens/form_aplication/components/date_form_field.dart';
import 'package:census_support_tool_app/src/screens/form_aplication/components/text_form_field.dart';
import 'package:census_support_tool_app/src/screens/form_aplication/form_sheet.dart';
import 'package:flutter/material.dart';

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
              onPressed: _showSaveRegisterDialog,
            ),
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
                ))
              ],
            ),
          ),
        ));
  }

  void _showSaveRegisterDialog() {
    String name = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Enter Name',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (value) {
                    name = value;
                  },
                  decoration: InputDecoration(hintText: 'Enter your name'),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        // You can do something with the entered name here
                        print('Entered name: $name');
                        Navigator.pop(context);
                      },
                      child: Text('Save'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
