import 'package:flutter/material.dart';

class Combobox extends StatefulWidget {
  final List<String> items;
  final Function(String selection) onSelect;

  const Combobox({super.key, required this.items, required this.onSelect});
  @override
  State<StatefulWidget> createState() => _ComboboxState();
}

class _ComboboxState extends State<Combobox> {
  String selectedValue = "hola";

  @override
  Widget build(BuildContext context) {
    if (selectedValue == "hola") selectedValue = widget.items[0];
    return (Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff4FB171),
          boxShadow: const [
            BoxShadow(
                color: Color(0xff000000),
                blurRadius: 1,
                spreadRadius: 0,
                offset: Offset(0, 0))
          ]),
      child: DropdownButton<String>(
        value: selectedValue,
        elevation: 16,
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Color(0xff000000),
          size: 30,
        ),
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 0,
          color: Colors.deepPurpleAccent,
        ),
        isExpanded: true,
        onChanged: (String? newValue) {
          if (newValue != null) {
            setState(() {
              selectedValue = newValue;
              widget.onSelect(selectedValue);
            });
          }
        },
        items: widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Center(
              child: Text(
                value,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xff000000)),
              ),
            ),
          );
        }).toList(),
      ),
    ));
  }
}
