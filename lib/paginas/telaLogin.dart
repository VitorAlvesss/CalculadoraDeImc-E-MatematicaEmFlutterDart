import 'package:flutter/material.dart';

class telaLogin extends StatefulWidget{
  const telaLogin({super.key});

  @override
  State<telaLogin> createState() => _tela_login();
}

class _tela_login extends State<telaLogin> {
  String email = "";
  final _emailController = TextEditingController();

  String senha = "";
  final _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Icon(
              Icons.person,
              size: 100
            ),

            SizedBox(height: 50),

            Text(
              "Email",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Digite seu email.",
                border: OutlineInputBorder()
              ),
            ),

            SizedBox(height: 15),

            Text(
              "Senha",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: _senhaController,
              decoration: InputDecoration(
                hintText: "Digite sua senha.",
                border: OutlineInputBorder()
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                email = _emailController.text;
                senha = _senhaController.text;
                

                if(email.isEmpty || senha.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("A senha e o email não podem estar em branco."),
                      backgroundColor: Colors.red,
                    )
                  );
                  return;
                }
              },
              child: const Text('Entrar'),
            )


          ],
        )
      )
    );
  }
}