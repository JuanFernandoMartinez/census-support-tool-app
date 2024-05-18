import 'package:census_support_tool_app/src/screens/form_application/form_manager.dart';
import 'package:census_support_tool_app/src/screens/navigation_home/navigation_home_screen.dart';
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
        '/': (context) => const NavigationHome(),
        '/form_application': (context) => const FormManager(),
      },
    );
  }
}
