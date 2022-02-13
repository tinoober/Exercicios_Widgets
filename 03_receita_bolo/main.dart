import 'package:flutter/material.dart';

void main() {
  runApp(const Recipe());
}

class Recipe extends StatelessWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Card(
        child: Column(
          children: [
            Image.network("https://i.imgur.com/NrfOeJY.jpeg"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  altura: 100,
                  largura: 100,
                  cor: Colors.green,
                ),
                Block(
                  altura: 100,
                  largura: 100,
                  cor: Colors.red,
                ),
                Block(
                  altura: 100,
                  largura: 100,
                  cor: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Block extends StatelessWidget {
  final double altura;
  final double largura;
  final Color cor;

  const Block(
      {Key? key,
      this.altura = 100,
      this.largura = 100,
      this.cor = Colors.amberAccent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: altura,
      width: largura,
      color: cor,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
    );
  }
}
