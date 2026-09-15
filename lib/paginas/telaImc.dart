import 'package:flutter/material.dart';

class telaCalculoImc extends StatefulWidget{
  const telaCalculoImc({super.key});

  @override
  State<telaCalculoImc> createState() => _tela_imc();
}

class _tela_imc extends State<telaCalculoImc> {
  double altura = 0.0;
  final _alturaController = TextEditingController();

  double peso = 0.0;
  final _pesoController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora de índice de massa corporal."),
        backgroundColor: const Color.fromARGB(255, 35, 75, 95),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Icon(
              Icons.scale,
              size: 100,
              color: Color.fromARGB(255, 6, 24, 124),
            ),

            const SizedBox(height: 20),

            const Text(
              "Digite sua altura: ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: _alturaController,
              decoration: InputDecoration(
                hintText: 'Altura em centímetros.',
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(height: 20),


            const Text(
              "Digite seu peso: ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: _pesoController,
              decoration: InputDecoration(
                hintText: 'Peso em kg',
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(height: 40), 

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
                onPressed: () {},
                child: const Text('Calcular')
              ),


          ],
        )
      )

    );
  }
}