// Importa os componentes visuais do Flutter
import 'package:flutter/material.dart';

// Cria um widget chamado CampoTexto
// StatelessWidget indica que o widget não possui estado mutável
class CampoTexto extends StatelessWidget {

  // Variáveis que recebem as informações do campo de texto
  // final indica que o valor será definido uma vez
  // e não poderá ser alterado depois da inicialização
  final String titulo;
  final String dica;
  final IconData icone;

  // Construtor da classe CampoTexto
  const CampoTexto({
    super.key,

    // required obriga quem utilizar o widget
    // a informar esses três valores
    required this.titulo,
    required this.dica,
    required this.icone,
  });

  // Método responsável por construir a interface
  @override
  Widget build(BuildContext context) {

    // Retorna um campo de texto para o usuário digitar
    return TextField(

      // Configura a aparência do campo de texto
      decoration: InputDecoration(

        // Texto que identifica o campo
        labelText: titulo,

        // Dica exibida dentro do campo
        hintText: dica,

        // Ícone exibido no início do campo
        prefixIcon: Icon(icone),

        // Ativa o preenchimento de fundo
        filled: true,

        // Define a cor de fundo do campo
        fillColor: Colors.white,

        // Define a borda do campo
        border: OutlineInputBorder(

          // Arredonda os cantos da borda
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}