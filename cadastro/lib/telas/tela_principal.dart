// Importa os componentes visuais do Flutter
import 'package:flutter/material.dart';

// Cria a classe responsável pela tela principal
class TelaPrincipal extends StatelessWidget {

  // Construtor da classe
  const TelaPrincipal({super.key});

  // Método responsável por construir a interface
  @override
  Widget build(BuildContext context) {

    // Scaffold fornece a estrutura básica da tela
    return Scaffold(

      // Define a cor de fundo da tela
      backgroundColor: const Color(0xFFF4F8FD),

      // Cria o cabeçalho da tela
      appBar: AppBar(

        // Define a cor de fundo do cabeçalho
        backgroundColor: Colors.blue,

        // Define a cor dos textos e ícones do cabeçalho
        foregroundColor: Colors.white,

        // Define o título do cabeçalho
        title: const Text(
          'Página Principal',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        // Lista de ações exibidas no lado direito do AppBar
        actions: [

          // Cria um botão com ícone de sair
          IconButton(
            icon: const Icon(Icons.logout),

            // Texto exibido ao manter o mouse sobre o botão
            tooltip: 'Sair',

            // Define o que acontece quando o botão é clicado
            onPressed: () {

              // Volta até a primeira tela da navegação
              Navigator.popUntil(
                context,
                (route) => route.isFirst,
              );
            },
          ),
        ],
      ),

      // Conteúdo principal da tela
      body: SingleChildScrollView(

        // Define o espaçamento interno de 20 pixels
        padding: const EdgeInsets.all(20),

        // Organiza os elementos verticalmente
        child: Column(

          // Alinha os elementos à esquerda
          crossAxisAlignment: CrossAxisAlignment.start,

          // Lista de elementos da tela
          children: [

            // Container de apresentação do aplicativo
            Container(

              // Ocupa toda a largura disponível
              width: double.infinity,

              // Define o espaçamento interno
              padding: const EdgeInsets.all(24),

              // Configura a aparência do container
              decoration: BoxDecoration(

                // Cria um fundo com degradê azul
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF2196F3),
                    Color(0xFF0D47A1),
                  ],
                ),

                // Arredonda os cantos
                borderRadius: BorderRadius.circular(20),
              ),

              // Organiza os elementos verticalmente
              child: Column(

                // Alinha os elementos à esquerda
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  // Ícone de boas-vindas
                  Icon(
                    Icons.waving_hand,
                    color: Colors.white,
                    size: 40,
                  ),

                  // Espaçamento vertical
                  SizedBox(height: 16),

                  // Mensagem principal
                  Text(
                    'Olá, Seja bem-vindo(a)!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  // Espaçamento vertical
                  SizedBox(height: 8),

                  // Texto de apresentação
                  Text(
                    'É muito bom ter você aqui.'
                    'Explore as funcionalidades do aplicativo e aproveite ao máximo a experiência.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // Espaçamento antes das opções
            const SizedBox(height: 30),

            // Título da seção
            const Text(
              'O que deseja fazer?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            // Espaçamento
            SizedBox(height: 16),

            // Cria uma linha com duas opções
            Row(
              children: [

                // Expanded divide o espaço disponível
                // para que o cartão ocupe uma parte da linha
                Expanded(

                  // Chama a função personalizada _criarOpcao
                  child: _criarOpcao(

                    // Define o ícone da opção
                    icone: Icons.person,

                    // Define o título da opção
                    titulo: 'Meu Perfil',

                    // Define a cor do ícone
                    cor: Colors.blue,

                    // Função anônima executada ao clicar
                    aoClicar: () {

                      // Exibe uma mensagem na parte inferior da tela
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Em breve você poderá acessar seu perfil!',
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // Espaçamento horizontal entre os cartões
                const SizedBox(width: 16),

                // Expanded permite que o segundo cartão
                // também ocupe o espaço disponível
                Expanded(

                  // Reutiliza a mesma função personalizada
                  child: _criarOpcao(
                    icone: Icons.settings,
                    titulo: 'Configurações',
                    cor: Colors.deepPurple,

                    // Função anônima executada ao clicar
                    aoClicar: () {

                      // Exibe uma mensagem na tela
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Em breve você poderá acessar suas configurações!',
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),

            // Espaçamento vertical
            const SizedBox(height: 16),

            // Cria um cartão informativo
            Container(
              width: double.infinity,

              // Espaçamento interno
              padding: const EdgeInsets.all(20),

              // Personaliza a aparência
              decoration: BoxDecoration(

                // Define o fundo branco
                color: Colors.white,

                // Arredonda os cantos
                borderRadius: BorderRadius.circular(18),

                // Adiciona sombra
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withValues(alpha: 0.08),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),

              // Organiza o ícone e os textos horizontalmente
              child: const Row(
                children: [

                  // Ícone informativo
                  Icon(
                    Icons.info_outline,
                    color: Colors.blue,
                    size: 32,
                  ),

                  // Espaçamento horizontal
                  SizedBox(width: 14),

                  // Expanded permite que os textos
                  // ocupem o espaço restante
                  Expanded(
                    child: Column(

                      // Alinha os textos à esquerda
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        // Título do cartão
                        Text(
                          'Tudo pronto para começar!',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // Espaçamento
                        SizedBox(height: 6),

                        // Descrição do cartão
                        Text(
                          'Sua área principal está pronta'
                          'para receber novas funcionalidades!',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Espaçamento antes da grade de cartões
            SizedBox(height: 30),

            // Cria uma grade com duas colunas
            /*GridView.count(

              // Quantidade de colunas
              crossAxisCount: 2,

              // Permite que a grade ocupe apenas o espaço necessário
              // dentro da rolagem principal
              shrinkWrap: true,

              // Impede que a grade tenha rolagem própria
              physics: NeverScrollableScrollPhysics(),

              // Espaçamento horizontal entre os cartões
              crossAxisSpacing: 10,

              // Espaçamento vertical entre os cartões
              mainAxisSpacing: 10,

              // Lista de cartões da grade
              children: [

                // Primeiro cartão: Perfil
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, size: 40),
                      Text('Perfil'),
                    ],
                  ),
                ),

                // Segundo cartão: Cursos
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.book, size: 40),
                      Text('Cursos'),
                    ],
                  ),
                ),

                // Terceiro cartão: Atividades
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.assignment, size: 40),
                      Text('Atividades'),
                    ],
                  ),
                ),

                // Quarto cartão: Configurações
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings, size: 40),
                      Text('Configurações'),
                    ],
                  ),
                ),
              ],
            ),*/
          ],
        ),
      ),
    );
  }

  // Método personalizado responsável por criar
  // os cartões de opções da tela principal.
  //
  // Recebe quatro informações:
  // ícone, título, cor e função executada ao clicar.
  Widget _criarOpcao({

    // Recebe o ícone que será exibido
    required IconData icone,

    // Recebe o título do cartão
    required String titulo,

    // Recebe a cor do ícone
    required Color cor,

    // Recebe uma função que não possui parâmetros
    // e não retorna nenhum valor
    required VoidCallback aoClicar,
  }) {

    // InkWell permite detectar cliques e toques
    return InkWell(

      // Executa a função recebida quando o cartão é clicado
      onTap: aoClicar,

      // Arredonda o efeito visual do clique
      borderRadius: BorderRadius.circular(18),

      // Container cria a área visual do cartão
      child: Container(

        // Define o espaçamento interno
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 12,
        ),

        // Configura a aparência do cartão
        decoration: BoxDecoration(

          // Define a cor de fundo
          color: Colors.white,

          // Arredonda os cantos
          borderRadius: BorderRadius.circular(18),

          // Adiciona sombra
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),

        // Organiza ícone e título verticalmente
        child: Column(
          children: [

            // Exibe o ícone recebido como parâmetro
            Icon(
              icone,
              color: cor,
              size: 40,
            ),

            // Espaçamento vertical
            const SizedBox(height: 12),

            // Exibe o título recebido como parâmetro
            Text(
              titulo,

              // Centraliza o texto
              textAlign: TextAlign.center,

              // Configura a aparência
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}