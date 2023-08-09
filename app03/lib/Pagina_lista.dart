import 'package:app03/modelo/objeto_data_hora.dart';
import 'package:flutter/material.dart';

import 'widgets/itens_lista.dart';

final TextEditingController email_controle = TextEditingController();

class Pagina_Lista extends StatefulWidget {
  @override
  State<Pagina_Lista> createState() => _Pagina_ListaState();
}

class _Pagina_ListaState extends State<Pagina_Lista> {
  final TextEditingController mensagensControlador = TextEditingController();

  List<Data_Hora> Mensagem = [];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Lista:",
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: mensagensControlador,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Adicione uma tarefa",
                        hintText: "Digite aqui"),
                  ),
                ),
                SizedBox(width: 7),
                ElevatedButton(
                  onPressed: () {
                    String qualquercoisa = mensagensControlador.text;
                    setState(() {
                      Data_Hora item_data_hora = Data_Hora(
                        titulo: qualquercoisa, data_hora: DateTime.now());
                      Mensagem.add(item_data_hora);
                    });
                    mensagensControlador.clear();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 208, 0, 250),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 320,
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (Data_Hora mensagen_controle in Mensagem) 
                  tudoItemLista(mensagem_data_hora: mensagen_controle),
                  /*ListTile(
                      title: Text(mensagem),
                      subtitle: Text("5:00h"),
                      leading: Icon(
                        Icons.hotel_rounded,
                        size: 30,color: Colors.blue,
                      ),
                      onTap: () {
                        print("Mensagem: $Mensagem");
                      },
                    ),*/
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    labelText: "Limpar tarrefas adicionadas recentemente",
                  ),
                )),
                SizedBox(width: 7),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Mensagem.clear();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 250, 0, 229),
                  ),
                  child: Text("Limpar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
