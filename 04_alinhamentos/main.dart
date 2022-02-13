import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Card(
        child: Alinhamento(
          eixoCruzado: CrossAxisAlignment.end,
          eixoPrincipal: MainAxisAlignment.end,
        ),
      ),
    );
  }
}

class Alinhamento extends StatelessWidget {
  final CrossAxisAlignment eixoCruzado;
  final MainAxisAlignment eixoPrincipal;
  const Alinhamento({
    Key? key,
    this.eixoCruzado = CrossAxisAlignment.start,
    this.eixoPrincipal = MainAxisAlignment.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: eixoCruzado,
      mainAxisAlignment: eixoPrincipal,
      children: [
        Bloco(
          altura: 150,
          largura: 150,
          cor: Colors.green,
        ),
        Bloco(
          altura: 150,
          largura: 150,
          cor: Colors.yellow,
        ),
        Bloco(
          altura: 150,
          largura: 150,
          cor: Colors.red,
        ),
      ],
    );
  }
}

class Bloco extends StatelessWidget {
  final double altura;
  final double largura;
  final Color cor;
  const Bloco(
      {Key? key, this.altura = 100, this.largura = 100, this.cor = Colors.blue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: altura,
      width: largura,
      color: cor,
    );
  }
}
