import 'package:flutter/material.dart';
import 'package:imcv2/consts/colors/colors.dart';
import 'package:imcv2/resultado.dart';
import 'package:imcv2/widgets/redButton.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.resultado}) : super(key: key);

  final Resultado resultado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      appBar: AppBar(
        backgroundColor: kprimaryColor,
        title: Text("Calculadora IMC"),
        centerTitle: true,
        elevation: 10,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 60,
              left: 10,
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Seu Resultado",
                  style: TextStyle(
                    color: kContentColor,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 30.0,
              ),
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: ksecondaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultado.categoria.name.toUpperCase(),
                    style: TextStyle(color: Colors.green, fontSize: 26),
                  ),
                  Text(
                    resultado.valor.toStringAsFixed(1),
                    style: TextStyle(
                      color: kContentColor,
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    resultado.descricao,
                    style: TextStyle(color: kContentColor, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          RedButton(
            text: "Re-calcular",
            onTap: () {},
          )
        ],
      ),
    );
  }
}
