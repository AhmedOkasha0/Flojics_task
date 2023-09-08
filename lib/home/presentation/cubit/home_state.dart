part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<Movies> moviesList;

  const HomeLoaded({required this.moviesList});

  @override
  List<Object> get props => [moviesList];
}

class HomeErrorMessage extends HomeState {
  final String message;

  const HomeErrorMessage({required this.message});
  @override
  List<Object> get props => [message];
}
