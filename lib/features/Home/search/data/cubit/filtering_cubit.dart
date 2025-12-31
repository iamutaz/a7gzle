import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'filtering_state.dart';

class FilteringCubit extends Cubit<FilteringState> {
  FilteringCubit() : super(FilteringInitial());
}
