import 'package:dio/dio.dart';
import 'package:flojics_task/core/error/exceptions.dart';
import 'package:flojics_task/core/network/api_constants.dart';
import 'package:flojics_task/core/network/error_message_model.dart';
import 'package:flojics_task/home/data/models/movies_modedl.dart';

abstract class BaseMoviesRemoteDataSource {
  Future<List<MoviesModel>> getTvShows();
  Future<List<MoviesModel>> getMovies();
}

class MoviesDataSource extends BaseMoviesRemoteDataSource {
  final BaseMoviesRemoteDataSource baseMoviesRemoteDataSource;

  MoviesDataSource({required this.baseMoviesRemoteDataSource});

  @override
  Future<List<MoviesModel>> getMovies() async {
    final respose = await Dio().get(ApiConstants.moviesEndPoint);
    if (respose.statusCode == 200) {
      return List<MoviesModel>.from(
          (respose.data["dtat"] as List).map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromJson(respose.data));
    }
  }

  @override
  Future<List<MoviesModel>> getTvShows() async {
    final respone = await Dio().get(ApiConstants.tvShowsEndPoint);
    if (respone.statusCode == 200) {
      return List<MoviesModel>.from(
          (respone.data["data"] as List).map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromJson(respone.data));
    }
  }
}
