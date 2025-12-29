import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/details/data/cubit/booking_state.dart';
import 'package:a7gzle/features/details/data/model/booking_request_body.dart';
import 'package:a7gzle/features/details/data/repo/book_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

class BookingCubit extends Cubit<BookingState> {
  final BookRepo _bookRepo;

  TextEditingController startdatecontroller = TextEditingController();
  TextEditingController enddatecontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  BookingCubit(this._bookRepo) : super(BookingState.initial());

  void emitbookapartment(BookingRequestBody bookingrequestbody) async {
    emit(BookingState.bookingloading());
    var response = await _bookRepo.bookapartment(bookingrequestbody);

    response.when(
      success: (bookingresponse) {
        print("success in cubir");
        emit(BookingState.bookingsuccess(bookingresponse));
      },
      failure: (message) {
        print("fali in cubit");
        emit(BookingState.bookingfailure(exception: message));
      },
    );
  }
}
