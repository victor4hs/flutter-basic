import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import './questionario.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontosTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        { 'texto': 'Preto', 'pontos': 10 },
        { 'texto': 'Vermelho', 'pontos': 5 },
        { 'texto': 'Verde', 'pontos': 3 },
        { 'texto': 'Branco', 'pontos': 1 },
      ]
    },
    {
      'texto': 'Qual é seu animal favorito',
      'respostas': [
        { 'texto': 'Coelho', 'pontos': 10 },
        { 'texto': 'Cobra', 'pontos': 5 },
        { 'texto': 'Elefante', 'pontos': 3 },
        { 'texto': 'Leão', 'pontos': 1 },
      ]
    },
    {
      'texto': 'Qual seu livro favorito?',
      'respostas': [
        { 'texto': 'Harry Potter', 'pontos': 10 },
        { 'texto': 'Nárnia', 'pontos': 5 },
        { 'texto': 'Sandman', 'pontos': 3 },
        { 'texto': 'Contos LoveCraft', 'pontos': 1 },
      ]
    },
  ];

  void _responder(int pontos) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontosTotal += pontos;
      });
    }
  }

  void _resetar() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontosTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
                temPerguntaSelecionada: temPerguntaSelecionada,
              )
            : Resultado(_pontosTotal, _resetar),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    // TODO: implement createState
    return _PerguntaAppState();
  }
}
