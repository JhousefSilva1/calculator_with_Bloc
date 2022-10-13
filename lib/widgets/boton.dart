import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final Color bgColor;
  final bool big;
  final String text;

  final Function onPressed;

  Boton({
    Key? key,
    bgColor,
    this.big = false,
    required this.text,
    required this.onPressed,
    required Color color,
  })  : bgColor = bgColor ?? const Color.fromARGB(255, 20, 20, 20),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonStyle = TextButton.styleFrom(
      backgroundColor: bgColor,
      primary: Color.fromARGB(255, 248, 245, 245),
      shape: const StadiumBorder(),
    );

    return Container(
      margin: const EdgeInsets.only(bottom: 10, right: 5, left: 5),
      child: TextButton(
        style: buttonStyle,
        child: Container(
          width: big ? 150 : 65,
          height: 65,
          child: Center(
              child: Text(
            text,
            style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w300),
          )),
        ),
        onPressed: () => this.onPressed(),
      ),
    );
  }
}
