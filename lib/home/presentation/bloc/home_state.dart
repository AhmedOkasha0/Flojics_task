part of 'home_bloc.dart';

class HomeState extends Equatable {
  final List<Movies> moviesList;
  final RequestState movies;
  final String moviesMessage;
  final List<Movies> tvShowsList;
  final RequestState tvShows;
  final String tvShowMessage;
  const HomeState({
    this.moviesList = const [],
    this.movies = RequestState.loading,
    this.moviesMessage = "",
    this.tvShowsList = const [],
    this.tvShows = RequestState.loading,
    this.tvShowMessage = "",
  });
  HomeState copyWith({
    List<Movies>? moviesList,
    RequestState? movies,
    String? moviesMessage,
    List<Movies>? tvShowsList,
    RequestState? tvShows,
    String? tvShowMessage,
  }) {
    return HomeState(
      movies: movies ?? this.movies,
      moviesList: moviesList ?? this.moviesList,
      moviesMessage: moviesMessage ?? this.moviesMessage,
      tvShowMessage: tvShowMessage ?? this.tvShowMessage,
      tvShows: tvShows ?? this.tvShows,
      tvShowsList: tvShowsList ?? this.moviesList,
    );
  }

  @override
  List<Object> get props =>
      [movies, moviesList, moviesMessage, tvShowMessage, tvShows, tvShowsList];
}

class HomeInitial extends HomeState {}
