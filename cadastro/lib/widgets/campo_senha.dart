// Importa os componentes visuais do Flutter
import 'package:flutter/material.dart';

// Cria o widget CampoSenha
// StatefulWidget permite que a interface tenha mudanças de estado
class CampoSenha extends StatefulWidget {

  // Construtor da classe
  const CampoSenha({super.key});

  // Cria e associa a classe responsável por controlar os estados
  @override
  State<CampoSenha> createState() => _CampoSenhaState();
}

// Classe responsável por controlar as mudanças do campo de senha
class _CampoSenhaState extends State<CampoSenha> {

  // Variável que controla se a senha está visível ou oculta
  // false = senha oculta
  // true = senha visível
  bool mostrarSenha = false;

  // Método responsável por construir a interface
  @override
  Widget build(BuildContext context) {

    // Cria o campo de texto
    return TextField(

      // Controla a visibilidade da senha
      // ! inverte o valor da variável
      // false = senha visível
      // true = senha oculta
      obscureText: !mostrarSenha,

      // Configura a aparência do campo
      decoration: InputDecoration(

        // Título do campo
        labelText: 'Senha',

        // Dica para o usuário
        hintText: 'Digite sua senha',

        // Ícone de cadeado no início do campo
        prefixIcon: const Icon(Icons.lock),

        // Botão para mostrar ou ocultar a senha
        suffixIcon: IconButton(

          // Altera o ícone conforme o estado da senha
          icon: Icon(
            mostrarSenha
                ? Icons.visibility
                : Icons.visibility_off,
          ),

          // Executa uma ação quando o usuário clica no ícone
          onPressed: () {

            // Atualiza o estado do widget
            setState(() {

              // Inverte o valor da variável
              mostrarSenha = !mostrarSenha;

            });
          },
        ),

        // Ativa o preenchimento do campo
        filled: true,

        // Define a cor de fundo
        fillColor: Colors.white,

        // Configura a borda
        border: OutlineInputBorder(

          // Arredonda os cantos
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}