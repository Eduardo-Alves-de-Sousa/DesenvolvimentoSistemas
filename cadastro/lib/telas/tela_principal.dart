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

                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}