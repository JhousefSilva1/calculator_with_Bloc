import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'operaciones_event.dart';
part 'operaciones_state.dart';

class OperacionesBloc extends Bloc<OperacionesEvent, OperacionesState> {
  OperacionesBloc() : super(OperacionesState());

  @override
  Stream<OperacionesState> mapEventToState(
    OperacionesEvent event,
  ) async* {
    //limpiar pantalla
    if (event is Limpiar) {
      yield* _Limpiar();
    }
    //agregar numeros
    else if (event is Add) {
      yield state.copyWith(
        resultado: (state.resultado == '0')
            ? event.datas
            : state.resultado + event.datas,
      );
    }
    //cambio de signo
    else if (event is PosNeg) {
      yield state.copyWith(
          resultado: state.resultado.contains('-')
              ? state.resultado.replaceFirst('-', '')
              : '-' + state.resultado,
          entradaDos: '',
          entradaUno: '');
    }
    //Eliminar digito
    else if (event is Del) {
      yield state.copyWith(
          resultado: state.resultado.length > 1
              ? state.resultado.substring(0, state.resultado.length - 1)
              : '0');
    }
    //realizar operacion
    else if (event is Operation) {
      yield state.copyWith(
          entradaUno: state.resultado,
          resultado: '0',
          operacion: event.operation,
          entradaDos: '0');
    }
    //Resultado
    else if (event is Operar) {
      yield* _Operar();
    }
  }

  //Limpiar pantalla
  Stream<OperacionesState> _Limpiar() async* {
    yield OperacionesState(
        entradaUno: '0', resultado: '0', entradaDos: '0', operacion: '+');
  }

  //Realizar operaciones elementales
  Stream<OperacionesState> _Operar() async* {
    final double num1 = double.parse(state.entradaUno);
    final double num2 = double.parse(state.resultado);

    switch (state.operacion) {
      case '+':
        double res = num1 + num2;
        yield state.copyWith(entradaDos: state.resultado, resultado: '$res');
        break;
      case '-':
        double res = num1 - num2;
        yield state.copyWith(entradaDos: state.resultado, resultado: '$res');
        break;
      case 'x':
        double res = num1 * num2;
        yield state.copyWith(entradaDos: state.resultado, resultado: '$res');
        break;
      case '/':
        double res = num1 / num2;
        yield state.copyWith(entradaDos: state.resultado, resultado: '$res');
        break;
      default:
        yield state;
    }
  }
}
