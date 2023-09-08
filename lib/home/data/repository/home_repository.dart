import 'package:flojics_task/core/error/exceptions.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';
import 'package:dartz/dartz.dart';
import 'package:flojics_task/home/data/data_source/movies_remote_data_source.dart';
import 'package:flojics_task/home/domain/entities/movies_show.dart';
import 'package:flojics_task/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements BaseHomeReqpository {
  final BaseMoviesRemoteDataSource moviesRemoteDataSource;

  HomeRepositoryImpl({required this.moviesRemoteDataSource});

  @override
  Future<Either<Faulier, List<Movies>>> getMovies() async {
    final result = await moviesRemoteDataSource.getMovies();
    try {
      return right(result);
    } on ServerExeption catch (faulier) {
      return left(SereverFailuer(faulier.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Faulier, List<Movies>>> getTvShows() async {
    final result = await moviesRemoteDataSource.getTvShows();
    try {
      return right(result);
    } on ServerExeption catch (faulier) {
      return left(SereverFailuer(faulier.errorMessageModel.statusMessage));
    }
  }
}
