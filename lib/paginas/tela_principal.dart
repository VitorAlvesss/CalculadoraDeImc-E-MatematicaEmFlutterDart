import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadoras.'),
        backgroundColor: const Color.fromARGB(255, 201, 16, 77),
        foregroundColor: Colors.white,
      ),


      body: Padding(
        //espaçamento em todas as áreas da aplicação
        padding: const EdgeInsets.all(24),

        child: SizedBox(
          width: double.infinity,
          child: Column(

          
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [


              const Icon(
                Icons.calculate,
                size: 100,
                color: Colors.lightGreen
              ),

              const SizedBox(height: 16),

              const Text(
                'Calculadora IMC',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                child: const Text('Calcular IMC')
              ), 


              const Text(
                'Calculadora matemática',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                child: const Text('Calcular')
              ),       
            ],
          ),
        )
      )
    );
  }
}