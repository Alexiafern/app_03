import 'package:app03/modelo/objeto_data_hora.dart';
import 'package:flutter/material.dart';
import 'package:app03/Pagina_lista.dart';
import 'package:intl/intl.dart';

class tudoItemLista extends StatelessWidget {
  const tudoItemLista({super.key, required this.mensagem_data_hora});

  final Data_Hora mensagem_data_hora;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromARGB(189, 208, 0, 250),
        borderRadius: BorderRadius.circular(10),),
        height: 60,       
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text(DateFormat("dd/MM/yyyy - HH:mm").format(mensagem_data_hora.data_hora),
          style: TextStyle(fontSize: 15, color: Colors.black,),),
          Text(mensagem_data_hora.titulo,
          style: TextStyle(fontSize: 20,),),          
        ],),
      ),
    );
  }
}
