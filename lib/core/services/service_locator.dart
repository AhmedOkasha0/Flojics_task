import 'package:flojics_task/authentication/data/data_source/user_remote_data_source.dart';
import 'package:flojics_task/authentication/data/repository/auth_repository.dart';
import 'package:flojics_task/authentication/domian/repository/auth_repository.dart';
import 'package:flojics_task/authentication/domian/usecases/login_usecase.dart';
import 'package:flojics_task/authentication/domian/usecases/signup_usecase.dart';
import 'package:flojics_task/home/data/data_source/movies_remote_data_source.dart';
import 'package:flojics_task/home/data/repository/home_repository.dart';
import 'package:flojics_task/home/domain/repository/home_repository.dart';
import 'package:flojics_task/home/domain/usecases/get_movies.dart';
import 'package:flojics_task/home/domain/usecases/get_tv_shows.dart';
import 'package:flojics_task/home/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

class ServiceLocator {
  void init() {
    // repository
    sl.registerLazySingleton<BaseHomeReqpository>(
        () => HomeRepositoryImpl(moviesRemoteDataSource: sl()));
    sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImbl(sl()));

    // remote data source
    sl.registerLazySingleton<BaseMoviesRemoteDataSource>(
        () => MoviesDataSource());
    sl.registerLazySingleton<FirebaseAuthDatasource>(
        () => UserRemoteDataSource(firebaseAuth: sl()));

    // use cases
    sl.registerLazySingleton(() => GetMoviesUseCase(homeReqpository: sl()));
    sl.registerLazySingleton(() => GetTvShowsUseCase(homeReqpository: sl()));
    sl.registerLazySingleton(() => LoginUseCase(authRepository: sl()));
    sl.registerLazySingleton(() => SignUpUseCase(authRepository: sl()));

    //cubit
    sl.registerFactory(() => HomeBloc(sl(), sl()));
  }
}
