import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

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

    final List<Map<String, Object>> perguntas = [
      {
     'texto': 'Qual é a sua cor favorita ?',
      'Respostas': ['Azul', 'Branco', 'Vermelho', 'Preto'],
      },      {
     'texto': 'Qual é o seu animal favorito ?',
      'Respostas': ['Jacaré', 'Tubarão', 'Elefante', 'Macaco'],
      },      {
     'texto': 'Qual é a sueu instrutor favorito ?',
      'Respostas': ['Zé', 'João', 'Lu', 'Zaza'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
               Resposta('Resposta 1', _Responder),
               Resposta('Resposta 2', _Responder),
               Resposta('Resposta 3', _Responder),
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