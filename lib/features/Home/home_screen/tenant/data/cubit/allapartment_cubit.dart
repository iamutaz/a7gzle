import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_state.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/repo/all_apartment_repo.dart';
import 'package:bloc/bloc.dart';

class AllapartmentCubit extends Cubit<AllapartmentState> {
  AllApartmentRepo _allApartmentRepo;
  List<Apartment> allapartment = [];
  AllapartmentCubit(this._allApartmentRepo)
    : super(AllapartmentState.initial());

  void emitAllApartmentState() async {
    emit(AllapartmentLoading());
    var response = await _allApartmentRepo.getAllApartment();
    response.when(
      success: (data) {
        print("succes in cubit");

        allapartment = data.apartmentlist;
        emit(AllapartmentState.allapartmentsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(AllapartmentState.allapartmentfailure(exception: exception));
      },
    );
  }
}
