import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calculadora/bloc/Operaciones/operaciones_bloc.dart';
import 'package:calculadora/widgets/panel.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/widgets/boton.dart';

class Pantalla extends StatelessWidget {
  const Pantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final opr = BlocProvider.of<OperacionesBloc>(context);
    //title
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),

              //data panel
              const Panel(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: 'AC',
                    bgColor: Color.fromARGB(216, 1, 129, 1),
                    color: Colors.black,
                    onPressed: () => opr.add(Limpiar()),
                  ),
                  Boton(
                    text: '+/-',
                    bgColor: Color.fromARGB(216, 1, 129, 1),
                    color: Colors.black,
                    onPressed: () => opr.add(PosNeg()),
                  ),
                  Boton(
                    text: '<|',
                    bgColor: Color.fromARGB(216, 1, 129, 1),
                    color: Colors.black,
                    onPressed: () => opr.add(Del()),
                  ),
                  Boton(
                    text: '/',
                    bgColor: Color.fromARGB(216, 1, 129, 1),
                    color: Colors.black,
                    onPressed: () => opr.add(Operation('/')),
                  ),
                ],
              ),
              //buttons style
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: '7',
                    onPressed: () => opr.add(Add('7')),
                    color: Colors.black,
                    bgColor: Color.fromARGB(255, 214, 132, 9),
                  ),
                  Boton(
                    text: '8',
                    onPressed: () => opr.add(Add('8')),
                    color: Colors.black,
                    bgColor: Color.fromARGB(255, 214, 132, 9),
                  ),
                  Boton(
                    text: '9',
                    onPressed: () => opr.add(Add('9')),
                    color: Colors.black,
                    bgColor: Color.fromARGB(255, 214, 132, 9),
                  ),
                  Boton(
                    text: 'x',
                    bgColor: Colors.deepPurple,
                    color: Colors.black,
                    onPressed: () => opr.add(Operation('x')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: '4',
                    onPressed: () => opr.add(Add('4')),
                    color: Colors.black,
                    bgColor: Color.fromARGB(255, 214, 132, 9),
                  ),
                  Boton(
                    text: '5',
                    onPressed: () => opr.add(Add('5')),
                    color: Colors.black,
                    bgColor: Color.fromARGB(255, 214, 132, 9),
                  ),
                  Boton(
                    text: '6',
                    onPressed: () => opr.add(Add('6')),
                    color: Colors.black,
                    bgColor: Color.fromARGB(255, 214, 132, 9),
                  ),
                  Boton(
                    text: '-',
                    bgColor: Colors.deepPurple,
                    color: Colors.black,
                    onPressed: () => opr.add(Operation('-')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: '1',
                    onPressed: () => opr.add(Add('1')),
                    color: Colors.black,
                    bgColor: Color.fromARGB(255, 214, 132, 9),
                  ),
                  Boton(
                    text: '2',
                    onPressed: () => opr.add(Add('2')),
                    color: Colors.black,
                    bgColor: Color.fromARGB(255, 214, 132, 9),
                  ),
                  Boton(
                    text: '3',
                    onPressed: () => opr.add(Add('3')),
                    color: Colors.black,
                    bgColor: Color.fromARGB(255, 214, 132, 9),
                  ),
                  Boton(
                    text: '+',
                    bgColor: Colors.deepPurple,
                    color: Colors.black,
                    onPressed: () => opr.add(Operation('+')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: '0',
                    big: true,
                    onPressed: () => opr.add(Add('0')),
                    color: Colors.black,
                    bgColor: Color.fromARGB(255, 214, 132, 9),
                  ),
                  Boton(
                    text: '.',
                    onPressed: () => opr.add(Add('.')),
                    color: Colors.black,
                    bgColor: Color.fromARGB(255, 214, 132, 9),
                  ),
                  Boton(
                    text: '=',
                    bgColor: Colors.deepPurple,
                    color: Colors.black,
                    onPressed: () => opr.add(Operar()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
