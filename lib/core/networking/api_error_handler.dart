import 'package:dio/dio.dart';

class ApiErrorHandler {
  static String handleApiError(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      return "Check Your Internet Connection";
    }

    if (e.response != null) {
      final status = e.response!.statusCode;

      switch (status) {
        case 400:
          return "Bad request, try again";
        case 401:
          return "check your inputs , You've enter wrong information";
        case 403:
          return "You don't have access to reach there";
        case 404:
          return "Not Found";
        case 500:
          return "Server Error , Try Again later";
        default:
          return "unexcpectable error";
      }
    }

    return "unexcpectable error";
  }
}
