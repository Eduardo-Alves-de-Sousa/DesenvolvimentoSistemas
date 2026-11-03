import 'package:flutter/material.dart';
import 'telas/tela_boas_vindas.dart';

void main(){
  runApp(const MeuAplicativo());
}

class MeuAplicativo extends StatelessWidget{
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Aplicativo',
      home: const TelaBoasVindas(),
    );
  }
}