// Importa a tela principal do aplicativo
import 'package:cadastro/telas/tela_principal.dart';

// Importa os componentes visuais do Flutter
import 'package:flutter/material.dart';

// Arquivo responsável por iniciar o aplicativo
void main() {
  runApp(const MeuAplicativo());
}

// Classe principal do aplicativo
// StatelessWidget significa que essa tela não possui estado mutável
class MeuAplicativo extends StatelessWidget {

  // Construtor da classe
  const MeuAplicativo({super.key});

  // Método responsável por construir a interface do aplicativo
  @override
  Widget build(BuildContext context) {

    // MaterialApp configura a estrutura geral do aplicativo
    return MaterialApp(

      // Remove a faixa de DEBUG do canto superior direito
      debugShowCheckedModeBanner: false,

      // Define o nome do aplicativo
      title: 'Meu Aplicativo',

      // Define qual será a primeira tela exibida
      home: const TelaPrincipal(),
    );
  }
}