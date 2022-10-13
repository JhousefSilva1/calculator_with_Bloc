import 'package:calculadora/bloc/Operaciones/operaciones_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'linea.dart';
import 'main_result.dart';
import 'sub_result.dart';

class Panel extends StatelessWidget {
  const Panel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OperacionesBloc, OperacionesState>(
      builder: (context, state) {
        if (state.entradaUno == '0' && state.entradaDos == '0') {
          return MainResultText(
              text: state.resultado.endsWith('.0')
                  ? state.resultado.substring(0, state.resultado.length - 2)
                  : state.resultado);
        }
        return Column(
          children: [
            SubResult(text: state.entradaUno),
            SubResult(text: state.operacion),
            SubResult(
                text: state.entradaDos.endsWith('.0')
                    ? state.entradaDos.substring(0, state.entradaDos.length - 2)
                    : state.entradaDos),
            const Linea(),
            MainResultText(
                text: state.resultado.endsWith('.0')
                    ? state.resultado.substring(0, state.resultado.length - 2)
                    : state.resultado),
          ],
        );
      },
    );
  }
}
