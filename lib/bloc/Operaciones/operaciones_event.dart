part of 'operaciones_bloc.dart';

@immutable
abstract class OperacionesEvent {}

class Limpiar extends OperacionesEvent {}

class Add extends OperacionesEvent {
  final String datas;
  Add(this.datas);
}

class PosNeg extends OperacionesEvent {}

class Del extends OperacionesEvent {}

class Operation extends OperacionesEvent {
  final String operation;
  Operation(this.operation);
}

class Operar extends OperacionesEvent {}
