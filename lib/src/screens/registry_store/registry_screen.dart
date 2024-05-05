


import 'package:census_support_tool_app/src/widgets/Combobox.dart';
import 'package:census_support_tool_app/src/screens/registry_store/Components/registry_list_item.dart';
import 'package:census_support_tool_app/src/widgets/search_field.dart';
import 'package:flutter/material.dart';

List<String> example = ["hola", "mundo", "como", "estas", "hoy" ];

class RegistryScreen extends StatelessWidget{
  
  
 
  const RegistryScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: SingleChildScrollView(child: body(context), )
    );
  }}

  Widget body(context){
    
    return (
      
        Column(
          
          children: [
          
          
          const SizedBox(height: 100,),
          const SearchField(),
          const SizedBox(height: 50,),
          Container(width: MediaQuery.of(context).size.width*0.9,
          child: const Row( 
           
            children: [
            SizedBox(width: 10,),
            Text("Comunidad", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
          ],),
          ),
          const Combobox(items:["Palmira", "Pasto", "Popayan"]),
          //create dropdownbutton
          const SizedBox(height: 30,),
          
          Container(width: MediaQuery.of(context).size.width*0.9,
          child: const Row( 
           
            children: [
            SizedBox(width: 10,),
            Text("Formulario", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
          ],),
          ),


          const Combobox(items:["Palmira", "Pasto", "Popayan"]),
          
          const SizedBox(height: 20,),

          Container(width: MediaQuery.of(context).size.width*0.9,
          child: const Row( 
           
            children: [
            SizedBox(width: 10,),
            Text("Registros por completar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
          ],),
          ),

          
            
          Container( 
              width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.4,
              child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,  
              children: example.map((e) => Column(children: [RegistryListItem(title: e, date: DateTime.now(), registryId:  example.indexOf(e).toString()), const SizedBox(height: 10,)],)).toList(),
              ),
          ),
          ),
          
          
        
        ],)
      
    );
  }

  

  