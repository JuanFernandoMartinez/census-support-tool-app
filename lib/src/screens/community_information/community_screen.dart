import 'package:flutter/material.dart';

class CommunityScrren extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CommunityScrrenState();
}

class _CommunityScrrenState extends State<CommunityScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Comunidades",
              style: const TextStyle(
                fontFamily: 'Inria_sans',
                fontSize: 25,
              )),
        ],
      ),
    );
  }
}
