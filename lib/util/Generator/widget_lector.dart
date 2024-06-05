
import 'package:census_support_tool_app/src/screens/form_application/components/date_form_field.dart';
import 'package:census_support_tool_app/src/screens/form_application/components/text_form_field.dart';
import 'package:census_support_tool_app/src/widgets/combobox.dart';
import 'package:census_support_tool_app/src/widgets/search_field.dart';
import 'package:flutter/material.dart';

class WidgetLector{


  Widget createInput(int type, List<String> options, String label, String value){
    switch (type){
      case 1: return FormTextField(labelText: label, keyboardType: TextInputType.text, initialValue: value);
      case 2: return FormDateField(labelText: label, initialValue: DateTime.now());
      case 3: return const SearchField();
      case 4: return Combobox(items: options, onSelect: (value) => print(value));
      default: return FormTextField(labelText: label, keyboardType: TextInputType.text, initialValue: value);
    }
  }


  List<Widget> createInputs(List<Map<String, dynamic>> fields){
    List<Widget> inputs = [];
    fields.forEach((field) {
      inputs.add(createInput(field['type'], field['options'], field['label'], field['value']));
    });
    return inputs;
  }
}