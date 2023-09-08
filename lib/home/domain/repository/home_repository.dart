import 'package:dartz/dartz.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';
import 'package:flojics_task/home/domain/entities/movies_show.dart';

abstract class BaseHomeReqpository {
  Future<Either<Faulier, List<Movies>>> getTvShows();
  Future<Either<Faulier, List<Movies>>> getMovies();
}
