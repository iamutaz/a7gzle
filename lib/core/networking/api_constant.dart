class WebServicesConstant {
  static const String baseurl = "http://10.0.2.2:8000/api/";
  //auth
  static const String login = "auth/login";
  static const String register = "auth/register";
  static const String signup = "auth/register";
  static const String logout = "auth/logout";
  //apartments
  static const String allapartment = "apartments/allApartments";
  static const String createapartment = "apartments/create";
  static const String filtering = "apartments/filtering";
  //reservations
  static const String makereservations = "reservations/make";
  static const String myreservations = "reservations/my-reservations";
  static const String cancelreservation = "reservations/cancel";
  static const String updatereservation = "reservations/update";
}
