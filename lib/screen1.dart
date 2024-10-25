import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerassignment/screen2.dart';
import 'package:providerassignment/screenprovider.dart';

class Screen1 extends StatefulWidget{
  @override
  State<Screen1> createState()=> _Screen1State();
}
class _Screen1State extends State<Screen1>{
  @override
  Widget build(BuildContext context){
    final ScreenProvider=Provider.of<Screenprovider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 30, 206, 124),
        centerTitle: true,
        title: Text("Screen 1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,
        
        ),
        
        ),
        actions: [GestureDetector(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>Screen2()));
          },
          child: Icon(Icons.arrow_right_alt_sharp),
        )],
        
        
    
        
        
        
        
      ),
      
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("Total Count is ${ScreenProvider.count}"),
          SizedBox(height: 10),
          Expanded(child: ListView.builder(itemCount: ScreenProvider.count,itemBuilder: (context,index){
            return ListTile(
              title: Text("${index +1}"),
            );
            
          
              
            
          }))
          ],
          
        ),
        
        
      
        
      ),
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [FloatingActionButton(onPressed: (){
          ScreenProvider.increment();
        },child: Icon(Icons.add),),
        ],
      ),
      
      
      
      
      
      
    );
  }
}