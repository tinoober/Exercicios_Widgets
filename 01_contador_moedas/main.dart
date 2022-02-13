import 'package:flutter/material.dart';

void main() {
  runApp(_Moeda());
}

class _Moeda extends StatefulWidget {
  const _Moeda({Key? key}) : super(key: key);

  @override
  __MoedaState createState() => __MoedaState();
}

class __MoedaState extends State<_Moeda> {
  //declaraçãod e variáveis
  int cobre = 0, prata = 0, ouro = 0;

  //Função para contar moedas
  void contadorMoedas() {
    setState(() {
      cobre++;
      if (cobre == 10) {
        prata = prata + 1;
        cobre = 0;
      }
      if (prata == 10) {
        ouro = ouro + 1;
        prata = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//Fundo | início
      home: Card(
        //Coluna Layout
        child: GestureDetector(
          onTap: contadorMoedas,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.amberAccent, Colors.blue],
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 100,
                ),
                Text("\n\n\nClique na tela para ganhar moedas\n\n\n"),
                Text("Bronze $cobre"),
                Text("Prata $prata"),
                Text("Ouro $ouro"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
