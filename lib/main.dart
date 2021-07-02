import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _Responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
            Text(perguntas[_perguntaSelecionada]),
            RaisedButton(onPressed: _Responder,
              child: Text('Resposta1'),
            ) ,           RaisedButton(onPressed: _Responder,
              child: Text('Respostas'),
            ) ,           RaisedButton(onPressed: _Responder,
              child: Text('Respostas'),
            )
          ],
        ),
      ),
    );
  }


}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}