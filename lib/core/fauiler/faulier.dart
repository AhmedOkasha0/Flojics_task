import 'package:equatable/equatable.dart';

abstract class Faulier extends Equatable {
  final String message;

  const Faulier(this.message);
  @override
  List<Object> get props => [message];
}

class SereverFailuer extends Faulier {
  const SereverFailuer(super.message);
}

class DataBaseFailuer extends Faulier {
  const DataBaseFailuer(super.message);
}
