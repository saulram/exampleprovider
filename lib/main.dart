import 'package:flutter/material.dart';
import 'package:provider_example/screens/firstpage.dart';
import 'package:provider/provider.dart';
import 'providers/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( //Este widget viene de la dependencia que agregamos.
      builder: (context)=>MyProvider(),//Requiere de un builder, que recibe el context, y nos devuelve un MyProvider (este fue el que creamos en providers/provider)
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Example',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    ),
    );
  }
}

