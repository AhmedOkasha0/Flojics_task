import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flojics_task/home/domain/entities/movies_show.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}
