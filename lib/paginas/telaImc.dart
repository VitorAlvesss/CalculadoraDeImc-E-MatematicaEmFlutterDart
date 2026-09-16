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

  double imc = 0.0;

  String resultadoImc = "";

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
         
            const SizedBox(height: 50),

            Text(
              "Estado do seu IMC: $resultadoImc",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 60),

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
                onPressed: () {
                 final alturaDigitado = double.parse(_alturaController.text);
                 final pesoDigitado = double.parse(_pesoController.text);

                 if(alturaDigitado <=0.0 && pesoDigitado <= 0){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Digite um valores positivos."),
                      backgroundColor: Colors.red,
                      )
                  );
                  return;
                 }

                 setState(() {
                  altura = double.parse(_alturaController.text) / 100;
                  peso = double.parse(_pesoController.text);
                  imc = peso / (altura * altura);
                  if (imc < 18.5) {
                    resultadoImc = "Abaixo do peso.";
                  }
                  else if (imc <= 24.9) {
                    resultadoImc = 'Peso normal';
                  }
                  else if (imc <= 29.9) {
                    resultadoImc = 'Sobrepeso';
                  }
                  else if (imc <= 34.9) {
                    resultadoImc = 'Obesidade grau 1';
                  }
                  else if (imc <= 39.9) {
                    resultadoImc = 'Obesidade grau 2';
                  }
                  else {
                    resultadoImc = 'Obesidade mórbida';
                  }
                });
                },
                child: const Text('Calcular')
              ),

              SizedBox(height: 15),

              ElevatedButton(
                onPressed: (){
                  setState(() {
                    _alturaController.text = "";
                    _pesoController.text = "";
                    resultadoImc = "";
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