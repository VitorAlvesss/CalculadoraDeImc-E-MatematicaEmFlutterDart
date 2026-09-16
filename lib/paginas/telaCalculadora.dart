import 'package:flutter/material.dart';

class telaCalculadora extends StatefulWidget{
  const telaCalculadora({super.key});

  @override
  State<telaCalculadora> createState() => _tela_calculadora();
}

class _tela_calculadora extends State<telaCalculadora> {
  double valorUm = 0.0;
  final _valorUmController = TextEditingController();

  double valorDois = 0.0;
  final _valorDoisController = TextEditingController();

  dynamic total = "";

  // String resultadoImc = "";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora das quatro operações básicas."),
        backgroundColor: const Color.fromARGB(255, 35, 75, 95),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Icon(
              Icons.calculate,
              size: 100,
              color: Color.fromARGB(255, 6, 24, 124),
            ),
         
            const SizedBox(height: 50),

            Text(
              "Resultado: $total",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 60),

            const Text(
              "Digite o primeiro valor: ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: _valorUmController,
              decoration: InputDecoration(
                hintText: 'Digite um número.',
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(height: 20),


            const Text(
              "Digite o segundo valor: ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: _valorDoisController,
              decoration: InputDecoration(
                hintText: 'Digite um número.',
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(height: 40), 

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
                onPressed: () {
                  final valorUmDigitado = double.parse(_valorUmController.text);
                  final valorDoisDigitado = double.parse(_valorDoisController.text);
                 setState(() {
                    total = valorUmDigitado + valorDoisDigitado;
                });
                },
                child: const Text('Adição')
              ),

              SizedBox(height: 15),

              ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
                onPressed: () {
                  final valorUmDigitado = double.parse(_valorUmController.text);
                  final valorDoisDigitado = double.parse(_valorDoisController.text);
                 setState(() {
                  total = valorUmDigitado - valorDoisDigitado;              
                });
                },
                child: const Text('Subtração')
              ),

              SizedBox(height: 15),

              ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
                onPressed: () {
                  final valorUmDigitado = double.parse(_valorUmController.text);
                  final valorDoisDigitado = double.parse(_valorDoisController.text);           
                 setState(() {
                  total = valorUmDigitado * valorDoisDigitado;            
                });
                },
                child: const Text('Multiplicação')
              ),

              SizedBox(height: 15),

              ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
                onPressed: () {
                  final valorUmDigitado = double.parse(_valorUmController.text);
                  final valorDoisDigitado = double.parse(_valorDoisController.text);
                  if(valorDoisDigitado <=0.0){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Digite um valor acima de zero."),
                      backgroundColor: Colors.red,
                      )
                  );
                  return;
                 }
                 setState(() {
                  total = (valorUmDigitado / valorDoisDigitado).toStringAsFixed(2);
                 
                });
                },
                child: const Text('Divisão')
              ),

              SizedBox(height: 15),

              ElevatedButton(
                onPressed: (){
                  setState(() {
                    _valorUmController.text = "";
                    _valorDoisController.text = "";
                    total = "";
                  });
                },
                child: Text("Limpar"),
              )
          ],
        )
      )

    );
  }
}