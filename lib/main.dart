import 'package:flutter/material.dart';
import 'package:oper_pays/homescreen.dart';

void main() {
  runApp(Operpay());
}

class Operpay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
      
      
    );
  }
}
