import 'package:flutter/material.dart';

class SavingDialog extends StatefulWidget {
  final String title;
  final String hintText;
  final Function(String) onSave;
  final Function onCancel;

  const SavingDialog({
    super.key,
    required this.onSave,
    required this.title,
    required this.hintText,
    required this.onCancel,
  });

  @override
  State<SavingDialog> createState() => _SavingDialogState();
}

class _SavingDialogState extends State<SavingDialog> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: Form(
        key: _formKey,
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor digita un nombre valido.';
            }
            return null;
          },
          decoration: InputDecoration(hintText: widget.hintText),
          initialValue: _name,
          onSaved: (value) {
            setState(() {
              _name = value!;
            });
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => widget.onCancel(),
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              widget.onSave(_name);
            }
          },
          child: const Text('Guardar'),
        ),
      ],
    );
  }
}
