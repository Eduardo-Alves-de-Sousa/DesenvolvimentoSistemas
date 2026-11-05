import 'package:flutter/material.dart';

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
            
            const SizedBox(height: 16,),

            //campo para digitar a SENHA DO USUARIO
          ],
        ),
      ),
    );
  }
}