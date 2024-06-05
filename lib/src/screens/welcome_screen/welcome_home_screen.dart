import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo with rounded corners and shadow
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15), // Clip the logo
                child: Image.asset(
                  'assets/logo.jpg',
                  width: 180, // Slightly larger logo
                  height: 180,
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Bienvenido a la CensoApp',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF37474F), // Darker text for contrast
              ),
            ),
            const SizedBox(height: 16),
            // Text in a card for better visual separation
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '¡Censemonos juntos! Conozcamos nuestras necesides.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blueGrey[600], // Slightly lighter text
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
