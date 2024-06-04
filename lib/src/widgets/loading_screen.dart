import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
            strokeWidth: 5,
          ),
        ),
      ),
    );
  }
}
