import 'package:a7gzle/core/networking/api_constant.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/model/create_apartment_response_body.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/allapartment_response_body.dart';
import 'package:a7gzle/features/Home/search/data/model/filter_request_body.dart';
import 'package:a7gzle/features/Home/settings/data/model/logout_response_body.dart';
import 'package:a7gzle/features/auth/login/data/model/login_request_body.dart';
import 'package:a7gzle/features/auth/login/data/model/login_response_body.dart';
import 'package:a7gzle/features/auth/signup/data/model/signupresponsebody.dart';
import 'package:a7gzle/features/details/data/model/booking_request_body.dart';
import 'package:a7gzle/features/details/data/model/booking_response_body.dart';
import 'package:a7gzle/features/reservations/data/model/cancel_reservation_request_body.dart';
import 'package:a7gzle/features/reservations/data/model/cancel_reservation_response_body.dart';
import 'package:a7gzle/features/reservations/data/model/user_reservations_response_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: WebServicesConstant.baseurl)
abstract class WebServices {
  factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;

  @POST(WebServicesConstant.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginrequestbody);

  @POST(WebServicesConstant.signup)
  @MultiPart()
  Future<Signupresponsebody> signup({
    @Part(name: "first_name") required String firstname,
    @Part(name: "last_name") required String lastname,
    @Part(name: "birthdate") required String birthdate,
    @Part(name: "number") required String number,
    @Part(name: "type") required String type,
    @Part(name: "password") required String password,
    @Part(name: 'password_confirmation') required String passwordConfirmation,

    @Part(name: 'profile_photo') required MultipartFile profilePhoto,
    @Part(name: 'id_photo_back') required MultipartFile idPhotoBack,
    @Part(name: 'id_photo_front') required MultipartFile idPhotoFront,
  });

  @POST(WebServicesConstant.logout)
  Future<LogoutResponseBody> logout();

  @GET(WebServicesConstant.allapartment)
  Future<AllapartmentResponseBody> getAllApartment();

  @POST(WebServicesConstant.createapartment)
  @MultiPart()
  Future<CreateApartmentResponseBody> createApartment({
    @Part(name: "type") required String type,
    @Part(name: "title") required String title,
    @Part(name: "description") required String description,
    @Part(name: "price") required String price,
    @Part(name: "rooms") required int rooms,
    @Part(name: "bathrooms") required int bathrooms,
    @Part(name: "city") required String city,
    @Part(name: 'area') required int area,
    @Part(name: 'images[]') required List<MultipartFile> images,
  });

  @POST(WebServicesConstant.makereservations)
  Future<BookingResponseBody> bookapartment(
    @Body() BookingRequestBody bookingrequestbody,
  );
  @GET(WebServicesConstant.myreservations)
  Future<UserReservationsResponseBody> getAllUserReservations();

  @POST(WebServicesConstant.cancelreservation)
  Future<CancelReservationResponseBody> cancelreservation(
    @Body() CancelReservationRequestBody cancerreservationrequestbody,
  );

  @POST(WebServicesConstant.filtering)
  Future<AllapartmentResponseBody> filtering(
    @Body() FilterRequestBody filterrequestbody,
  );
}
