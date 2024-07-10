import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(this.errorMessage);
}

class ServiceFailure extends Failure {
  ServiceFailure(super.errorMessage);

  factory ServiceFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServiceFailure('Connection Timeout With API Server');

      case DioExceptionType.sendTimeout:
        return ServiceFailure('Sending Timeout With API Server');

      case DioExceptionType.receiveTimeout:
        return ServiceFailure('Receiving Timeout With API Server');

      case DioExceptionType.badCertificate:
        return ServiceFailure('Bad Certificates Timeout With API Server');

      case DioExceptionType.badResponse:
        return ServiceFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServiceFailure('Request To API Server Was Canceled');

      case DioExceptionType.connectionError:
        return ServiceFailure('Connection Error Timeout With API Server');

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServiceFailure('No Internet Connection');
        } else {
          return ServiceFailure('UnExpected Error, Please Try Again Later !');
        }
      default:
        return ServiceFailure(
            'Oops, There Was An Error, Please Try Again Later !');
    }
  }
  factory ServiceFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiceFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServiceFailure('Your Request Not Found, Please Try Again Later !');
    } else if (statusCode == 500) {
      return ServiceFailure('Internal Server Error, Please Try Again Later !');
    } else {
      return ServiceFailure(
          'Oops, There Was An Error, Please Try Again Later !');
    }
  }
}
