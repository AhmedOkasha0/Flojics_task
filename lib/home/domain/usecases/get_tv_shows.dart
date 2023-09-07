import 'package:flojics_task/home/domain/entities/movies_show.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';
import 'package:dartz/dartz.dart';
import 'package:flojics_task/home/domain/repository/home_repository.dart';

class GetTvShowsUseCase {
  final BaseHomeReqpository homeReqpository;

  GetTvShowsUseCase({required this.homeReqpository});
  Future<Either<Failuer, List<Movies>>> call() async {
    return await homeReqpository.getTvShows();
  }
}
