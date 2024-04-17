

import 'package:flutter/material.dart';

class RegistryListItem extends StatelessWidget{
  const RegistryListItem({super.key, required this.title, required this.date});

  final String title;
  final DateTime date;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.9,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:const  Color(0xffC8FFDB)),
      
      
      child: Column(children: [
        const SizedBox(height: 10,),
        Row(
        children: [
          const SizedBox(width: 20,),
          Column( children: [
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
            const SizedBox(height: 2,),
            Container(
              width: MediaQuery.of(context).size.width*0.3,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: const Color(0xff154425),),
              padding: const EdgeInsets.all(1),
              child: 
                
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("${date.day}/${date.month}/${date.year}", 
                style: const  TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                 ),),
                ],)
                
                
              )
          ],),
          Expanded(child: Container(),),
          const Row( children: [
             Icon(Icons.play_arrow, size: 35,),
             SizedBox(width: 4,),
             Icon(Icons.delete, size: 35,),
             SizedBox(width: 20,),
          ],)
        ],
      ),
      const SizedBox(height: 10,)
      ],)

     );
  }

  
}