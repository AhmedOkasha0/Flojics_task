import 'package:flojics_task/home/data/data_source/movies_remote_data_source.dart';
import 'package:flojics_task/home/data/repository/home_repository.dart';
import 'package:flojics_task/home/domain/repository/home_repository.dart';
import 'package:flojics_task/home/domain/usecases/get_movies.dart';
import 'package:flojics_task/home/domain/usecases/get_tv_shows.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    // repository
    sl.registerLazySingleton<BaseHomeReqpository>(
        () => HomeRepositoryImpl(moviesRemoteDataSource: sl()));

    // remote data source
    sl.registerLazySingleton<BaseMoviesRemoteDataSource>(
        () => MoviesDataSource(baseMoviesRemoteDataSource: sl()));

    // use cases
    sl.registerLazySingleton(() => GetMoviesUseCase(homeReqpository: sl()));
    sl.registerLazySingleton(() => GetTvShowsUseCase(homeReqpository: sl()));
  }
}
