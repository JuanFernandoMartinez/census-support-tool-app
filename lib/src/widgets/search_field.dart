

import 'package:flutter/material.dart';

class SearchField extends StatelessWidget{
  const SearchField({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.7,
          child: TextField()
        ),
        Icon(Icons.search),
        Icon(Icons.filter_alt)
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
  
   
}