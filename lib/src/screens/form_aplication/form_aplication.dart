import 'package:flutter/material.dart';

class FormAplicationScreen extends StatefulWidget {
  const FormAplicationScreen({super.key});
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
    );
  }
}
