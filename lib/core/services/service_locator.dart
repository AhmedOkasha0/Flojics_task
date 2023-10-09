
import 'package:flojics_task/scr/authentication/data/data_source/user_remote_data_source.dart';
import 'package:flojics_task/scr/authentication/data/repository/auth_repository.dart';
import 'package:flojics_task/scr/authentication/domian/repository/auth_repository.dart';
import 'package:flojics_task/scr/authentication/domian/usecases/login_usecase.dart';
import 'package:flojics_task/scr/authentication/domian/usecases/signup_usecase.dart';
import 'package:flojics_task/scr/authentication/presentation/bloc/auth_bloc.dart';
import 'package:flojics_task/scr/home/data/data_source/movies_remote_data_source.dart';
import 'package:flojics_task/scr/home/data/repository/home_repository.dart';
import 'package:flojics_task/scr/home/domain/repository/home_repository.dart';
import 'package:flojics_task/scr/home/domain/usecases/get_movies.dart';
import 'package:flojics_task/scr/home/domain/usecases/get_tv_shows.dart';
import 'package:flojics_task/scr/home/presentation/bloc/home_bloc.dart';
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
    sl.registerFactory(() => AuthBloc(sl(), sl()));
  }
}
