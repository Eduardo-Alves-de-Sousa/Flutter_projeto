import 'package:flutter/material.dart';

main() => runApp(const PerguntaApp());

//classe para gerenciar o estado(controlando minhas variaveis/arvore de componentes)
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final Perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual seu filme favorito?',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(Perguntas[_perguntaSelecionada]),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Responsta 1'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Responsta 2'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Responsta 3'),
            ),
          ],
        ),
      ),
    );
  }
}

//classe para gerenciar os componentes da aplicação
//meu componente PerguntaApp vai herdar de statefull
class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
