import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/Home/settings/data/cubit/logout_state.dart';
import 'package:a7gzle/features/Home/settings/data/repo/logout_repo.dart';
import 'package:bloc/bloc.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final LogoutRepo _logoutRepo;

  LogoutCubit(this._logoutRepo) : super(LogoutState.initial());

  void emitLogoutState() async {
    emit(LogoutState.logoutloading());
    var response = await _logoutRepo.logout();
    response.when(
      success: (data) {
        emit(LogoutSuccess(data));
      },
      failure: (error) {
        emit(LogoutFailure(exception: error));
      },
    );
  }
}
