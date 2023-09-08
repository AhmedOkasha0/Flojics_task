import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';
import 'package:flojics_task/core/utils/app_strings.dart';
import 'package:flojics_task/home/domain/entities/movies_show.dart';
import 'package:flojics_task/home/domain/usecases/get_movies.dart';
import 'package:flojics_task/home/domain/usecases/get_tv_shows.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetMoviesUseCase moviesUseCase;
  final GetTvShowsUseCase tvShowsUseCase;
  HomeCubit(this.moviesUseCase, this.tvShowsUseCase) : super(HomeInitial());

  Future<void> getMoviesData() async {
    emit(HomeLoading());
    Either<Faulier, List<Movies>> response = await moviesUseCase();
    emit(response.fold(
        (faulier) => HomeErrorMessage(message: _mapFailureToMsg(faulier)),
        (moviesList) => HomeLoaded(moviesList: moviesList)));
  }

  Future<void> getTvshows() async {
    emit(HomeLoading());
    Either<Faulier, List<Movies>> response = await tvShowsUseCase();
    emit(response.fold(
        (faulier) => HomeErrorMessage(message: _mapFailureToMsg(faulier)),
        (moviesList) => HomeLoaded(moviesList: moviesList)));
  }

  String _mapFailureToMsg(Faulier faulier) {
    switch (faulier.runtimeType) {
      case SereverFailuer:
        return AppStrings.serverFaulier;
      case CachFaulier:
        return AppStrings.cachFaulier;

      default:
        return AppStrings.unexpectedError;
    }
  }
}
