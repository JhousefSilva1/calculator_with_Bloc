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
  })  : this.bgColor = bgColor ?? Colors.blue,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final ButtonStyle = TextButton.styleFrom(
      backgroundColor: bgColor,
      primary: Colors.black,
      shape: StadiumBorder(),
      // padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
    );

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      child: TextButton(
        style: ButtonStyle,
        // ignore: sort_child_properties_last
        child: Container(
          width: big ? 150 : 65,
          height: 65,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ),
        onPressed: (() => this.onPressed(text)),
      ),
    );
  }
}
