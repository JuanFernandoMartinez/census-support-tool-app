import 'package:census_support_tool_app/src/widgets/Combobox.dart';
import 'package:census_support_tool_app/src/screens/registry_store/Components/registry_list_item.dart';
import 'package:census_support_tool_app/src/widgets/search_field.dart';
import 'package:flutter/material.dart';

List<String> example = ["Control de salud--2022-04-03", "Calidad de vida--20223-06-14", "Seguridad en la casa--2021-12-09", "nivel de educación--2023-08-23", "diasnosticos clinicos--2022-04-02"];

class RegistryScreen extends StatelessWidget {
  const RegistryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: body(context),
    ));
  }
}

Widget body(context) {
  return (Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      const SearchField(),
      const SizedBox(
        height: 50,
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: const Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              "Comunidad",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      Combobox(
        items: ["Palmira", "Pasto", "Popayan"],
        onSelect: (selection) {
          print(selection);
        },
      ),
      //create dropdownbutton
      const SizedBox(
        height: 30,
      ),

      Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: const Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              "Formulario",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),

      Combobox(
        items: ["Estado socioeconomico", "Educación", "Estado de la vivienda"],
        onSelect: (selection) {
          
        },
      ),

      const SizedBox(
        height: 20,
      ),

      Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: const Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              "Registros por completar",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),

      Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.4,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: example
                .map((e) => Column(
                      children: [
                        RegistryListItem(
                            title: e.split("--")[0],
                            date: DateTime.parse(e.split("--")[1]),
                            registryId: example.indexOf(e).toString()),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
    ],
  ));
}
