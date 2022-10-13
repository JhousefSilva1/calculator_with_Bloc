part of 'operaciones_bloc.dart';

class OperacionesState {
  final String resultado;
  final String entradaUno;
  final String entradaDos;
  final String operacion;

  OperacionesState(
      {this.resultado = '0',
      this.entradaUno = '0',
      this.entradaDos = '0',
      this.operacion = '+'});

  OperacionesState copyWith({
    String? resultado,
    String? entradaUno,
    String? entradaDos,
    String? operacion,
 
  }) =>
      OperacionesState(
        resultado: resultado ?? this.resultado,
        entradaUno: entradaUno ?? this.entradaUno,
        entradaDos: entradaDos ?? this.entradaDos,
        operacion: operacion ?? this.operacion,
      );
}
