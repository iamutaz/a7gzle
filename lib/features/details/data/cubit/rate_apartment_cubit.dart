import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/details/data/cubit/rate_apartment_state.dart';
import 'package:a7gzle/features/details/data/model/rate_request_body.dart';
import 'package:a7gzle/features/details/data/repo/details_repo_repo.dart';
import 'package:bloc/bloc.dart';

class RateApartmentCubit extends Cubit<RateApartmentState> {
  DetailsRepo _repo;
  RateApartmentCubit(this._repo) : super(RateApartmentState.initial());

  void emitrateapartment(RateRequestBody raterequest) async {
    emit(RateApartmentState.ratingloading());
    var response = await _repo.rateapartment(raterequest);
    response.when(
      success: (data) {
        emit(RateApartmentState.ratingsuccess(data));
      },
      failure: (error) {
        emit(
          RateApartmentState.ratingfailure(
            error: error.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
