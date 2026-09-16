import 'package:calculadoras/paginas/telaCalculadora.dart';
import 'package:calculadoras/paginas/telaImc.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadoras.'),
        backgroundColor: const Color.fromARGB(199, 42, 50, 116),
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
                Icons.scale,
                size: 100,
                color: Color.fromARGB(255, 8, 2, 83)
              ),

              const SizedBox(height: 16),

              const Text(
                'Calculadora IMC',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => telaCalculoImc()),
                  );
                },
                child: const Text('Calcular IMC')
              ), 

              const SizedBox(height: 16),

              const Icon(
                Icons.calculate,
                size: 100,
                color: Color.fromARGB(255, 8, 2, 83)
              ),

              const SizedBox(height: 16),

              const Text(
                'Calculadora matemática',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => telaCalculadora()),
                  );
                },
                child: const Text('Calcular')
              ),       
            ],
          ),
        )
      )
    );
  }
}