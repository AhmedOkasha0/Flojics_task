import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flojics_task/core/utils/enums.dart';
import 'package:flojics_task/home/domain/entities/movies_show.dart';
import 'package:flojics_task/home/domain/usecases/get_movies.dart';
import 'package:flojics_task/home/domain/usecases/get_tv_shows.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetMoviesUseCase getMoviesUseCase;
  final GetTvShowsUseCase getTvShowsUseCase;
  HomeBloc(this.getMoviesUseCase, this.getTvShowsUseCase)
      : super(HomeInitial()) {
    on<GetMoviesListEvent>((event, emit) async {
      final result = await getMoviesUseCase();
      emit(const HomeState(movies: RequestState.loading));
      result.fold(
          (l) => emit(
                state.copyWith(
                    movies: RequestState.error, moviesMessage: l.message),
              ),
          (r) =>
              emit(state.copyWith(moviesList: r, movies: RequestState.loaded)));
    });
    on<GetTvShowListEvent>((event, emit) async {
      final result = await getTvShowsUseCase();
      emit(const HomeState(tvShows: RequestState.loading));
      result.fold(
          (l) => emit(state.copyWith(
              tvShows: RequestState.error, tvShowMessage: l.message)),
          (r) => emit(
              state.copyWith(tvShowsList: r, tvShows: RequestState.loaded)));
    });
  }
}
