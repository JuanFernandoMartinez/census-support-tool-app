



import 'package:flutter/material.dart';

class RegistryListItem extends StatelessWidget{
  const RegistryListItem({super.key, required this.title, required this.date, required this.registryId});

  final String title;
  final DateTime date;
  final String registryId;
  
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
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
          Row( children: [
              IconButton(onPressed: (){resumeIconAction(context);}, icon: const Icon(Icons.play_arrow, size: 35, color: Color(0xff154425),),),
             const SizedBox(width: 4,),
             IconButton(onPressed: (){ deleteIconAction();}, icon: const Icon(Icons.delete, size: 35,color: Color(0xff154425),),),
             const SizedBox(width: 20,),
          ],)
        ],
      ),
      const SizedBox(height: 10,)
      ],)

     );
  }


  
  //resumes form by registry by using registry ID
  int resumeIconAction(BuildContext context){
    Navigator.pushNamed(context, "/form_application");
    return 0;
  }


  //deletes form registry by using registry ID
  int deleteIconAction(){
    return 0;
  }

  
}