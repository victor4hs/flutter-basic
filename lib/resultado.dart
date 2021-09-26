import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  
  final int pontosTotal;
  final void Function() resetar;

  Resultado(this.pontosTotal, this.resetar);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text(
          'Parabéns! Total Pontos: ' + pontosTotal.toString(),
          style: TextStyle(fontSize: 28),
        ),
        TextButton(onPressed: resetar, child: Text('Recomeçar?'))
      ],
      )
    );
  }
}