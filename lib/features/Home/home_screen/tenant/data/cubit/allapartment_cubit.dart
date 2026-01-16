import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_state.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/favorite_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/repo/all_apartment_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllapartmentCubit extends Cubit<AllapartmentState> {
  AllApartmentRepo _allApartmentRepo;
  List<Apartment> allapartment = [];

  AllapartmentCubit(this._allApartmentRepo)
    : super(AllapartmentState.initial());

  void emitAllApartmentState(BuildContext context) async {
    emit(AllapartmentLoading());
    var response = await _allApartmentRepo.getAllApartment();
    response.when(
      success: (data) {
        print("succes in cubit");

        allapartment = data.apartmentlist;
        context.read<FavoriteCubit>().initFavorite(allapartment);
        emit(AllapartmentState.allapartmentsuccess(data));
      },
      failure: (exception) {
        print("fail in cubit");

        emit(
          AllapartmentState.allapartmentfailure(
            error: exception.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
