import 'package:census_support_tool_app/src/widgets/combobox.dart';
import 'package:flutter/material.dart';

class CardCommunityInformation extends StatelessWidget {
  final List<String> admins;
  final String address;
  final List<String> forms;

  const CardCommunityInformation(
      {super.key,
      required this.admins,
      required this.address,
      required this.forms});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color(0xFFD9D9D9),
      child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Administradores",
                  style: TextStyle(fontSize: 25, fontFamily: "Inria Sans")),
              avatarAdmins(admins),
              const SizedBox(height: 20),
              const Text(
                "Dirección",
                style: TextStyle(fontSize: 25, fontFamily: "Inria Sans"),
              ),
              addressCommunity(address),
              const SizedBox(height: 40),
              const Text(
                "Formularios",
                style: TextStyle(fontSize: 25, fontFamily: "Inria Sans"),
              ),
              Combobox(items: forms, onSelect: (selection) {}),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/form_application");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFEFE5EABA2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  "Abrir formulario",
                  style:
                      TextStyle(color: Colors.black, fontFamily: "Inria Sans"),
                ),
              )
            ],
          )),
    );
  }

  Widget avatarAdmins(List<String> admins) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Expanded(
          child: Container(
        alignment: Alignment.center,
        height: 100,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xff4FB171),
                        radius: 22,
                        child: Text(
                          admins[index].substring(0, 2),
                          style: const TextStyle(
                              fontSize: 25, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(admins[index]),
                    ],
                  ));
            },
            itemCount: admins.length),
      ))
    ]);
  }

  Widget addressCommunity(String address) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff4FB171)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text(
                address,
                style: const TextStyle(fontSize: 18, fontFamily: "Inria Sans"),
              ),
              const Spacer(
                flex: 1,
              ),
              const Icon(
                Icons.location_pin,
                color: Colors.red,
                size: 40,
              )
            ],
          ),
        ));
  }
}
