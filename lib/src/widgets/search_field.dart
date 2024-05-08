

import 'package:flutter/material.dart';


class SearchField extends StatelessWidget{
  const SearchField({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.8,
          decoration: BoxDecoration(color: const  Color(0xffD5CFE1),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 1.5, spreadRadius: 0.5, offset: Offset(0, 0) )],
          ),

          child: Row( mainAxisAlignment: MainAxisAlignment.center ,children: [
            Container(
          width: MediaQuery.of(context).size.width*0.6,
          child:   const TextField( ),
        ),
        const Icon(Icons.search, size: 35,),
          ],),
        ),
        const Icon(Icons.filter_alt, size: 35,)
      ],
      
    );
  }
  
   
}