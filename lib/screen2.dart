import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerassignment/screenprovider.dart';

class Screen2 extends StatefulWidget{
  @override
  State<Screen2> createState()=> _Screen2State();
}
class _Screen2State extends State<Screen2>{
  @override
  Widget build(BuildContext context){
    final ScreenProvider=Provider.of<Screenprovider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 30, 206, 124),
        centerTitle: true,
        title: Text("Screen 2",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("Total Count is ${ScreenProvider.count}",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)],
        ),
      ),
    );
  }
}