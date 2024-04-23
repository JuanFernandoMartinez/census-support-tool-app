import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:intl/intl.dart';

class FormDateField extends StatefulWidget {
  final String labelText;
  final DateTime? initialValue;
  final String? Function(DateTime? value)? validator;
  final void Function(DateTime? value)? onSaved;

  const FormDateField({
    required this.labelText,
    this.initialValue,
    this.validator,
    this.onSaved,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _FormDateFieldState();
}

class _FormDateFieldState extends State<FormDateField> {
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      onTap: () {
        DatePicker.showDatePicker(
          context,
          showTitleActions: true,
          onConfirm: (date) {
            setState(() {
              _selectedDate = date;
            });
            widget.onSaved?.call(date);
          },
          currentTime: _selectedDate ?? DateTime.now(),
          locale: LocaleType.es,
        );
      },
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_today),
      ),
      controller: TextEditingController(
        text: _selectedDate != null
            ? DateFormat('dd/MM/yyyy').format(_selectedDate!)
            : '',
      ),
    );
  }
}
