import 'package:flutter/material.dart';

class CommunityInformation extends StatelessWidget {
  const CommunityInformation({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Aquí puedes manejar la navegación de regreso a la otra vista
          },
        ),
      ),
      body: Column(
        children: [
          Column(


            children: [
              SizedBox(height: 50,),
              // tus widgets aquí
              const Text(
                'EL Castillo',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 60.0),
          const Text(
            'Administradores',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/image1.png'),
                radius: 30.0,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/image2.png'),
                radius: 30.0,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/image3.png'),
                radius: 30.0,
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Dirección',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            child: const Text(
              'Dirección aquí',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Selecciona una opción',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30.0),
          MyDropDown(), // Agregar el widget MyDropDown aquí
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Aquí puedes manejar la acción del botón
            },
            child: const Text('Botón'),
          ),
        ],
      ),
    );
  }
}

class MyDropDown extends StatefulWidget {
  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String dropdownValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}