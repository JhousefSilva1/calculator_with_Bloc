import 'package:flutter/material.dart';

// ignore: camel_case_types
class Linea extends StatelessWidget {
  const Linea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 0,
        color: Color.fromARGB(255, 223, 208, 4),
        margin: const EdgeInsets.symmetric(vertical: 10));
  }
}
