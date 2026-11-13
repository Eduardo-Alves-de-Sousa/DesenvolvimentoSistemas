import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget{
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //cor de fundo da tela.
      backgroundColor: const Color(0xFFF4F8FD),

      //cabeçalho personalizado da tela.
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,

        title: const Text(
          'Página Principal',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        //Botão para sair da tela.
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Sair',
            onPressed: () {
              // Ação ao clicar no botão de sair
              Navigator.popUntil(
                context, 
                (route) => route.isFirst);
            },
          ),
        ],
      ),
      //conteudo principal da tela.
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF2196F3),
                    Color(0xFF0D47A1)
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Icon(
                    Icons.waving_hand,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(height: 16,),

                  Text(
                    'Olá, Seja bem-vindo(a)!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8,),
                 
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

            const SizedBox(height: 30,),

            const Text(
              'O que deseja fazer?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16,),

            Row(
              children: [
                // Expanded faz o elemento ocupar o espaço disponível na tela.
                Expanded(
                  //_criarOpcao é uma função personalizada
                  child: _criarOpcao(
                    icone: Icons.person,
                    titulo: 'Meu Perfil',
                    cor: Colors.blue,
                    aoClicar: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Em breve você poderá acessar seu perfil!',
                          ),
                        ),
                      );
                    }
                  ),
                ),
                const SizedBox(width: 16,),
                // Expanded faz o elemento ocupar o espaço disponível na tela.
                Expanded(
                  //_criarOpcao é uma função personalizada
                  child: _criarOpcao(
                    icone: Icons.settings,
                    titulo: 'Configurações',
                    cor: Colors.deepPurple,
                    aoClicar: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Em breve você poderá acessar suas configurações!',
                          ),
                        ),
                      );
                    }
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16,),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withValues(alpha: 0.08),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
                
              ),
              child: const Row(
                children:[
                  Icon(
                    Icons.info_outline,
                    color: Colors.blue,
                    size: 32,
                  ),
                  SizedBox(width: 14,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tudo pronto para começar!',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6,),

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
          ],
        ),
      ),
    );
  }
  //Método que cria os cartões de opções na tela principal.
  // 
  Widget _criarOpcao({
    required IconData icone,
    required String titulo,
    required Color cor,
    required VoidCallback aoClicar,
  }) {
    return InkWell(
      onTap: aoClicar,
      borderRadius: BorderRadius.circular(18),

      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 12,
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              icone,
              color: cor,
              size: 40,
            ),

            const SizedBox(height: 12,),

            Text(
              titulo,
              textAlign: TextAlign.center,
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