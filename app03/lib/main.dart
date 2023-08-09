import 'package:flutter/material.dart';
import 'Pagina_lista.dart';

void main() {
  runApp(Meuapp());
}

class Meuapp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Pagina_Lista(),
      );
  }
}