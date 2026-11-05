import 'package:flutter/material.dart';

class CampoSenha extends StatefulWidget{
  const CampoSenha({super.key});

  @override
  State<CampoSenha> createState() => _CampoSenhaState();
}

class StatefulWidgets {
}
//CLASSE responsavel por controlar
// todas as mudanças do campo de senha
class _CampoSenhaState extends State<CampoSenha> {
bool mostrarSenha = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
     obscureText: !mostrarSenha,

     decoration: InputDecoration(
      labelText: 'Senha',
      hintText: 'Digite sua senha',
      prefixIcon: const Icon(Icons.lock),

      suffixIcon:IconButton( 
        icon: Icon(
          mostrarSenha
          ? Icons.visibility
          : Icons.visibility_off,
        ),
        onPressed: (){
          setState(() {
            mostrarSenha = !mostrarSenha;
          });
        },
      ),

     ),
    );
  }

}