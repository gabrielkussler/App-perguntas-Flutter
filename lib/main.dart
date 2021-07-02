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
      'respostas': ['Azul', 'Branco', 'Vermelho', 'Preto'],
      },      {
     'texto': 'Qual é o seu animal favorito ?',
      'respostas': ['Jacaré', 'Tubarão', 'Elefante', 'Macaco'],
      },      {
     'texto': 'Qual é a sueu instrutor favorito ?',
      'respostas': ['Zé', 'João', 'Lu', 'Zaza'],
      },
    ];
    List<String> respostas = perguntas[_perguntaSelecionada].cast()['respostas'];

/*
    for (String textoResp in respostas) {
      widgets.add(Resposta(textoResp, _Responder));
    }
*/

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _Responder)).toList()
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