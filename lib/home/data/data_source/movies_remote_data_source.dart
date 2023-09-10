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
  @override
  Future<List<MoviesModel>> getMovies() async {
    final respose = await Dio().get("https://mcuapi.herokuapp.com/api/v1/movies");
    if (respose.statusCode == 200) {
      return List<MoviesModel>.from(
          (respose.data["data"] as List).map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromJson(respose.data));
    }
  }

  @override
  Future<List<MoviesModel>> getTvShows() async {
    final respone = await Dio().get("https://mcuapi.herokuapp.com/api/v1/tvshows");
    if (respone.statusCode == 200) {
      return List<MoviesModel>.from(
          (respone.data["data"] as List).map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerExeption(
          errorMessageModel: ErrorMessageModel.fromJson(respone.data));
    }
  }
}
