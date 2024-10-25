import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerassignment/screen1.dart';
import 'package:providerassignment/screen2.dart';
import 'package:providerassignment/screenprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>Screenprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Screen1(),
      ),
    );
  }
}
      