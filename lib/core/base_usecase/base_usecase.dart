import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';

abstract class BaseUseCase<T, Parameter> {
  Future<Either<Faulier, List<T>>> call(Parameter parameter);
}

class NoParameter extends Equatable {
  const NoParameter();
  @override
  List<Object?> get props => [];
}
