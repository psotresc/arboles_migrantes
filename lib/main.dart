import 'package:flutter/material.dart';

void main() {
  runApp(const ArbolesMigrantes());
}

class ArbolesMigrantes extends StatelessWidget {
  const ArbolesMigrantes ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizzPage(),
          ),
        ),
      ),
    );
  }
}

class QuizzPage extends StatefulWidget {
  const QuizzPage ({Key? key}) : super(key: key);

  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {

  List <Widget> scoreKeeper = [];
  List <String> preguntas = [
    'Cuántas veces a la semana comes carne?',
    'Cuál es tu consumo de carne?',
    'Qué tanto usas de shampoo?'
  ];

  int questionNumber = 0;

  void changeNumber(){
    questionNumber++;
    print(questionNumber);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        //TODO: Crear puntaje
        Row(
            children: scoreKeeper,
        ),
         Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
               preguntas[questionNumber],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.grey,
                primary: Colors.white,
              ),
              onPressed: (){
                setState(() {
                  changeNumber();
                });
              },
              child: const Text('Muchas', style: TextStyle(fontSize: 25, color: Colors.white),),
            ),

          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.grey,
                primary: Colors.white,
              ),
              onPressed: (){

              },
              child: const Text('Pocas', style: TextStyle(fontSize: 25, color: Colors.white),),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.grey,
                primary: Colors.white,
              ),
              onPressed: (){
                
              },
              child: const Text('No sé',style: TextStyle(fontSize: 25.0, color: Colors.white),),
            ),
          ),
        ),
      ],
    );
  }
}


