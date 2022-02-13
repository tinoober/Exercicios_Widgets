import 'package:flutter/material.dart';

void main() {
  runApp(const MyComponent());
}

class MyComponent extends StatelessWidget {
  const MyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Card(
        child: Column(children: [
          Block(
            cor: Colors.green,
            altura: 70,
            largura: 200,
          ),
          Block(
            cor: Colors.yellow,
            altura: 50,
            largura: 50,
          ),
          Block(
            cor: Colors.blue,
            altura: 100,
            largura: 300,
          ),
          Block(
            cor: Colors.red,
            altura: 90,
            largura: 150,
          ),
        ]),
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
    );
  }
}
