import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sarcopenia_project/modelos/ButtonState.dart';
import 'package:sarcopenia_project/paginaInicial.dart';

class Resultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Usar o Provider para acessar o estado dos botões
    final buttonState = Provider.of<ButtonState>(context);

    // Calcular o somatório
    int somatorio = buttonState.buttonValue;

    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Somatório dos valores dos botões:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                '$somatorio',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.deepPurple),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false).reset();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('Limpar'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Paginainicial()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('Tela inicial'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Paginainicial()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('Direcionar Maps'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
