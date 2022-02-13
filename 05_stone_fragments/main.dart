import 'package:flutter/material.dart';

void main() {
  runApp(const Stone());
}

class Stone extends StatefulWidget {
  const Stone({Key? key}) : super(key: key);

  @override
  _StoneState createState() => _StoneState();
}

class _StoneState extends State<Stone> {
  //declaracao de variáveis
  int fragment = 0, piece = 0, stone = 0;
  String imagem = "https://i.imgur.com/jTqNa7D.png";

// Contar toques

  void contadorToques() {
    setState(() {
      fragment++;
      if (fragment == 10) {
        piece = piece + 1;
        fragment = 0;
        imagem = "https://i.imgur.com/IR5Sn6X.png";
      }

      if (piece == 10) {
        stone = stone + 1;
        piece = 0;
        fragment = 0;
        imagem = "https://i.imgur.com/JAeGRb1.png";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Card(
        child: GestureDetector(
          onTap: contadorToques,
          child: Container(
            //Fundo
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://i.imgur.com/etWX9CB.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  child: Image.network(imagem),
                  height: 150,
                ),
                Center(
                  child: Text(
                    "Stones: $stone",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Pieces: $piece",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Fragments: $fragment",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FigureStone extends StatelessWidget {
  const FigureStone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
