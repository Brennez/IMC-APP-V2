import 'package:flutter/material.dart';
import 'package:imcv2/consts/colors/colors.dart';
import 'package:imcv2/widgets/button.dart';
import 'package:imcv2/widgets/redButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double valorAtual = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: kprimaryColor,
        title: const Text("Calculadora IMC"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 30.0, bottom: 30.0),
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: ksecondaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 60,
                        icon: const Icon(
                          Icons.male,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      const Text(
                        "MASCULINO",
                        style: TextStyle(
                          color: kcontentIconColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 30.0, bottom: 30.0),
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: ksecondaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      IconButton(
                        iconSize: 60,
                        icon: const Icon(
                          Icons.female,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      const Text(
                        "FEMININO",
                        style: TextStyle(
                          color: kcontentIconColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: ksecondaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "ALTURA",
                    style: TextStyle(
                      color: kcontentIconColor,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "211",
                        style: TextStyle(
                            color: kContentColor,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(
                          top: 21,
                        ),
                        child: const Text(
                          "Cm",
                          style: TextStyle(
                            color: kcontentIconColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    max: 300,
                    divisions: 300,
                    thumbColor: kredColor,
                    value: valorAtual,
                    label: valorAtual.round().toString(),
                    onChanged: (valor) {
                      setState(
                        () {
                          valorAtual = valor;
                          print(valorAtual.toInt());
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 30.0, bottom: 30.0),
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: ksecondaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "PESO",
                        style: TextStyle(
                          color: kcontentIconColor,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "23",
                            style: TextStyle(
                              color: kContentColor,
                              fontSize: 60,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Kg",
                              style: TextStyle(
                                color: kcontentIconColor,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Button(icon: Icons.add),
                          Button(icon: Icons.remove),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 30.0, bottom: 30.0),
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: ksecondaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "IDADE",
                        style: TextStyle(
                          color: kcontentIconColor,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "30",
                            style: TextStyle(
                              color: kContentColor,
                              fontSize: 60,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Anos",
                              style: TextStyle(
                                color: kcontentIconColor,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Button(icon: Icons.add),
                          Button(icon: Icons.remove),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          RedButton(onPressed: () {}, text: "CALCULAR"),
        ],
      ),
    );
  }
}
