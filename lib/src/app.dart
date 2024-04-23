import 'package:census_support_tool_app/src/screens/form_application/form_application.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Census App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF3F4F3),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => FormAplicationScreen(
              title: "Censo socioeconómico",
              description:
                  "Este formulario tiene como objetivo recopilar información sobre las condiciones socioeconómicas de nuestra comunidad. Sus respuestas nos ayudarán a comprender mejor las necesidades de la población y a desarrollar programas y estrategias que mejoren la calidad de vida de todos.",
            ),
      },
    );
  }
}
