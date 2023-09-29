import 'package:flutter/material.dart';
import 'view/homeScreen.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(_) => HomeScreen(),
    },
  ));
}