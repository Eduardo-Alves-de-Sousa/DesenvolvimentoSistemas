import 'package:flutter/material.dart';

import '../widgets/compo_texto.dart';
import '../widgets/campo_senha.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: 350,

        decoration: BoxDecoration(
          color: Color.fromARGB(255, 164, 214, 245),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.blue.shade100,
          ),
        ),
        //Organizar os elementos em uma coluna vertical
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.account_circle,
              size: 60,
              color: Colors.blue
            ),
            const SizedBox(height: 8,),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8,),
            const Text(
              'Entre com seus dados para continuar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 24,),
            // Campo para digitar o EMAIL DO USUARIO
            const CampoTexto(
              titulo: 'E-mail',
              dica: 'Digite seu e-mail',
              icone: Icons.email,
            ),

            const SizedBox(height: 16,),
            //campo para digitar a SENHA DO USUARIO
            const CampoSenha(),

            const SizedBox(height: 20,),

            //botão para entrar no app
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaPrincipal(),
                    ),
                  );
                },
                icon: const Icon(Icons.login),
                label: const Text(
                  'Entrar',
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