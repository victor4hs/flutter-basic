import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  
  final String resposta;
  final void Function() onPress;

  Resposta(this.resposta, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(resposta),
        onPressed: onPress,
      ),
    );
  }
}