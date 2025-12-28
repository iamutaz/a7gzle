import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/cubit/create_apartment_state.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/model/create_apartment_request_body.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/repo/create_apartment_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

class CreateApartmentCubit extends Cubit<CreateApartmentState> {
  CreateApartmentRepo _createApartmentRepo;

  TextEditingController apartmentnamecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController bathroomscontroller = TextEditingController();
  TextEditingController roomscontroller = TextEditingController();
  TextEditingController areacontroller = TextEditingController();
  TextEditingController citycontroller = TextEditingController();
  TextEditingController typecontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  CreateApartmentCubit(this._createApartmentRepo)
    : super(CreateApartmentState.initial());

  void emitcreateapartment(
    CreateApartmentRequestBody createapartmentrequestbody,
  ) async {
    emit(CreateApartmentState.createapartmentloading());
    var response = await _createApartmentRepo.createApartment(
      createapartmentrequestbody,
    );
    response.when(
      success: (data) {
        emit(CreateApartmentState.createapartmentsuccess(data));
      },
      failure: (exception) {
        emit(CreateApartmentState.createapartmentfailure(exception: exception));
      },
    );
  }

  void clearControllers() {
    apartmentnamecontroller.clear();
    descriptioncontroller.clear();
    pricecontroller.clear();
    bathroomscontroller.clear();
    roomscontroller.clear();
    areacontroller.clear();
    citycontroller.clear();
    typecontroller.clear();
  }
}
