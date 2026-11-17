// Importa a tela de login para permitir a navegação
import 'package:cadastro/telas/tela_login.dart';

// Importa os componentes visuais do Flutter
import 'package:flutter/material.dart';

// Cria a classe TelaBoasVindas
// StatelessWidget indica que essa tela não possui estado mutável
class TelaBoasVindas extends StatelessWidget {

  // Construtor da classe
  const TelaBoasVindas({super.key});

  // Método responsável por construir a interface da tela
  @override
  Widget build(BuildContext context) {

    // Scaffold fornece a estrutura básica da tela
    return Scaffold(

      // Corpo principal da tela
      body: Container(

        // Ocupa toda a largura disponível
        width: double.infinity,

        // Ocupa toda a altura disponível
        height: double.infinity,

        // Configura o fundo da tela
        decoration: const BoxDecoration(

          // Cria um fundo com degradê de cores
          gradient: LinearGradient(

            // Define as cores do degradê
            colors: [
              Color(0xFFF5F9FF),
              Color(0xFFD6E8FF),
              Color(0xFF90CAF9)
            ],

            // Define onde começa o degradê
            begin: Alignment.topLeft,

            // Define onde termina o degradê
            end: Alignment.bottomRight,
          ),
        ),

        // Evita que o conteúdo fique atrás de elementos
        // do sistema, como relógio e barra de navegação
        child: SafeArea(

          // Centraliza o conteúdo na tela
          child: Center(

            // Permite rolar a tela caso o conteúdo
            // não caiba no espaço disponível
            child: SingleChildScrollView(

              // Define o espaçamento interno de 24 pixels
              padding: const EdgeInsets.all(24),

              // Organiza os elementos em uma coluna
              child: Column(

                // Faz a coluna ocupar apenas o espaço necessário
                mainAxisSize: MainAxisSize.min,

                // Lista de elementos que serão exibidos
                children: [

                  // Cria uma linha com ícone e nome do aplicativo
                  Row(

                    // Centraliza os elementos horizontalmente
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      // Ícone decorativo
                      const Icon(
                        Icons.auto_awesome,
                        color: Color(0xFF1565C0),
                        size: 22,
                      ),

                      // Nome do aplicativo
                      Text(
                        'MEU APLICATIVO',

                        // Configura a aparência do texto
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: Colors.blue.shade900,
                        ),
                      ),
                    ],
                  ),

                  // Cria um espaço vertical de 35 pixels
                  const SizedBox(height: 35),

                  // Container utilizado para criar o quadro do ícone
                  Container(
                    width: 150,
                    height: 150,

                    // Configura a aparência do container
                    decoration: BoxDecoration(

                      // Define a cor de fundo branca
                      color: Colors.white,

                      // Arredonda os cantos do container
                      borderRadius: BorderRadius.circular(40),

                      // Adiciona sombra ao container
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 30,
                          offset: const Offset(0, 12),
                        ),
                      ],
                    ),

                    // Centraliza o ícone dentro do container
                    child: const Center(
                      child: Icon(
                        Icons.waving_hand_rounded,
                        size: 80,
                        color: Colors.blue,
                      ),
                    ),
                  ),

                  // Espaçamento vertical
                  const SizedBox(height: 35),

                  // Texto principal da tela
                  const Text(
                    'Seja bem-vindo!',

                    // Centraliza o texto
                    textAlign: TextAlign.center,

                    // Configura a aparência do texto
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Espaçamento de 14 pixels
                  const SizedBox(height: 14),

                  // Texto de apresentação do aplicativo
                  const Text(
                    'Tudo começa com uma boa experiência.\n'
                    'Entre na sua conta ou crie uma nova\n'
                    'para começar.',

                    // Centraliza o texto
                    textAlign: TextAlign.center,

                    // Configura a aparência
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.7,
                      color: Color(0xFF455A64),
                    ),
                  ),

                  // Espaçamento antes do botão
                  const SizedBox(height: 38),

                  // Define o tamanho do botão
                  SizedBox(
                    width: double.infinity,
                    height: 58,

                    // Cria um botão com ícone e texto
                    child: ElevatedButton.icon(

                      // Define a ação executada ao clicar no botão
                      onPressed: () {

                        // Navega para a tela de login
                        Navigator.push(
                          context,

                          // Define qual tela será aberta
                          MaterialPageRoute(
                            builder: (context) => const TelaLogin(),
                          ),
                        );
                      },

                      // Ícone exibido no botão
                      icon: const Icon(Icons.login_rounded),

                      // Texto exibido no botão
                      label: const Text(
                        'Entrar na minha conta',

                        // Configura o texto do botão
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Personaliza as cores do botão
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1565C0),
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}