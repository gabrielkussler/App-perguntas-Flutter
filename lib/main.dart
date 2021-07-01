import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());


class PerguntaApp extends StatelessWidget {

  void Responder() {
    print("Pergunta Respondida");
  }

  @override
  Widget build(BuildContext context) {

    final perguntas = [
      'Qual é a sua cor favorita ?',
      'Qual o seu animal favorito ?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[1]),
            RaisedButton(onPressed: Responder,
            child: Text('Resposta1 '),
            ) ,           RaisedButton(onPressed: Responder,
            child: Text('Respostas'),
            ) ,           RaisedButton(onPressed: Responder,
            child: Text('Respostas'),
            )
          ],
        ),
      ),
    );
  }
}