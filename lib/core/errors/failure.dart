import 'package:dio/dio.dart';

class Failure {
  final String errorMessage;
  Failure({required this.errorMessage});
}
class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection timed out');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send request timed out');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive response timed out');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Bad certificate received');
      case DioExceptionType.badResponse:
        if (dioError.response != null) {
          return ServerFailure.fromResponse(dioError.response!.statusCode, dioError.response!.data);
        } else {
          return ServerFailure(errorMessage: 'Received a bad response');
        }
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'No Internet Connection ');
      case DioExceptionType.unknown:
        if(dioError.message!.contains("SocketException")){
          return ServerFailure(errorMessage: 'No Internet Connection');
        }
        return ServerFailure(errorMessage: "Unexpected Error , please try again ");

      default:
        return ServerFailure(errorMessage: 'Oops, there was an error, please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errorMessage: "Your response not found, please try later!");
    } else if (statusCode == 500) {
      return ServerFailure(errorMessage: "Internal server error, please try later");
    } else {
      return ServerFailure(errorMessage: "Oops, there was an error, please try again");
    }
  }
}
