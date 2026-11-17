// Importa a tela principal para permitir a navegação após o login
import 'package:cadastro/telas/tela_principal.dart';

// Importa os componentes visuais do Flutter
import 'package:flutter/material.dart';

// Importa o componente personalizado de campo de texto
import '../widgets/compo_texto.dart';

// Importa o componente personalizado de campo de senha
import '../widgets/campo_senha.dart';

// Cria a classe responsável pela tela de login
// StatelessWidget: não gerencia estado mutável próprio
class TelaLogin extends StatelessWidget {

  // Construtor da classe
  const TelaLogin({super.key});

  // Método responsável por construir a interface
  @override
  Widget build(BuildContext context) {

    // Scaffold fornece a estrutura básica da tela
    return Scaffold(

      // Corpo principal da tela
      body: Container(

        // Define a largura do container em 350 pixels
        width: 350,

        // Configura a aparência do container
        decoration: BoxDecoration(

          // Define a cor de fundo
          color: Color.fromARGB(255, 164, 214, 245),

          // Arredonda os cantos do container
          borderRadius: BorderRadius.circular(20),

          // Adiciona uma borda ao redor do container
          border: Border.all(
            color: Colors.blue.shade100,
          ),
        ),

        // Organiza os elementos verticalmente
        child: Column(

          // Faz a coluna ocupar apenas o espaço necessário
          mainAxisSize: MainAxisSize.min,

          // Lista de elementos que serão exibidos
          children: [

            // Ícone de usuário
            const Icon(
              Icons.account_circle,
              size: 60,
              color: Colors.blue,
            ),

            // Cria um espaço vertical de 8 pixels
            const SizedBox(height: 8),

            // Título da tela
            const Text(
              'Login',

              // Configura a aparência do texto
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            // Espaçamento vertical
            const SizedBox(height: 8),

            // Texto explicativo da tela
            const Text(
              'Entre com seus dados para continuar',

              // Centraliza o texto
              textAlign: TextAlign.center,

              // Configura a aparência
              style: TextStyle(
                fontSize: 13,
                color: Colors.blue,
              ),
            ),

            // Espaçamento antes dos campos
            const SizedBox(height: 24),

            // Utiliza o componente personalizado de e-mail
            const CampoTexto(
              titulo: 'E-mail',
              dica: 'Digite seu e-mail',
              icone: Icons.email,
            ),

            // Espaçamento entre os campos
            const SizedBox(height: 16),

            // Utiliza o componente personalizado de senha
            const CampoSenha(),

            // Espaçamento antes do botão
            const SizedBox(height: 20),

            // Define o tamanho do botão
            SizedBox(
              width: double.infinity,
              height: 45,

              // Cria um botão com ícone e texto
              child: ElevatedButton.icon(

                // Define a ação executada ao clicar no botão
                onPressed: () {

                  // Substitui a tela atual pela tela principal
                  Navigator.pushReplacement(
                    context,

                    // Define qual tela será aberta
                    MaterialPageRoute(
                      builder: (context) => const TelaPrincipal(),
                    ),
                  );
                },

                // Ícone do botão
                icon: const Icon(Icons.login),

                // Texto do botão
                label: const Text(
                  'Entrar',

                  // Configura a aparência do texto
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}