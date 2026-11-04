import 'package:cadastro/telas/tela_login.dart';
import 'package:flutter/material.dart';

class TelaBoasVindas extends StatelessWidget{
  const TelaBoasVindas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Utilizando a tela inteira, sem AppBar.
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // Iremos criar um fundo degradê de cor azul
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF5F9FF),
              Color(0xFFD6E8FF),
              Color(0xFF90CAF9)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Pequeno identificador no topo da tela contendo
                  //um icon dentro de um container
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.auto_awesome,
                        color: Color(0xFF1565C0),
                        size: 22,
                      ),
                      Text(
                        'MEU APLICATIVO',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: Colors.blue.shade900,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 35,),

                  Container(
                    width: 150,
                    height: 150,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 30,
                          offset: const Offset(0, 12),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.waving_hand_rounded,
                        size: 80,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 35,),
                  
                  const Text(
                    'Seja bem-vindo!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 14),

                  // Texto de apresentação.
                  const Text(
                    'Tudo começa com uma boa experiência.\n'
                    'Entre na sua conta ou crie uma nova\n'
                    'para começar.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.7,
                      color: Color(0xFF455A64),
                    ),
                  ),

                  const SizedBox(height: 38,),

                  //Botão de LOGIN
                  SizedBox(
                    width: double.infinity,
                    height: 58,

                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                              const TelaLogin(),
                          ), 
                        );
                      }, 
                      icon: const Icon(Icons.login_rounded),
                      label: const Text(
                        'Entrar na minha conta',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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