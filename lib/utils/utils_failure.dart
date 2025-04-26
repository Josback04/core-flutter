import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:core/models/failure.dart';
import 'package:core/models/message_error.dart';

Future<Either<Failure, T>> errorHandler<T>(
  AsyncCallback<T> asyncCallback,
) async {
  try {
    return Right(await asyncCallback());
  } on SocketException catch (e) {
    final error = Failure('${e.runtimeType}', e.message);
    return Left(error);
  } on DioException catch (e) {
    String errorMessage;

    if (e.response?.data is Map &&
        e.response!.data['errors'] != null &&
        e.response!.data['errors'] is List) {
      // Extraire uniquement le champ 'array'
      errorMessage = (e.response!.data['errors'] as List).join('\n\n');
    } else if (e.response!.statusCode! == 500) {
      errorMessage = 'Erreur sur le serveur veuillez réessayer';
    } else {
      // Si 'array' n'est pas présent, affichez l'ensemble des données ou 'errors' si disponible
      errorMessage = (e.response?.data['errors']?.toString() ??
              e.response?.data.toString()) ??
          'une erreur a été rencontré veuillez réessayer svp !';
    }
    final error = Failure('${e.response?.statusMessage}', errorMessage);

    // final error = Failure('${e.response?.statusMessage}', errorMessage);
    return Left(error);
  } on UnimplementedError catch (e) {
    final error = Failure('${e.runtimeType}', '${e.message}');
    return Left(error);
  } on MessageError catch (e) {
    final error = Failure(e.title, e.message);
    return Left(error);
  } catch (e) {
    final error = Failure('${e.runtimeType}', '$e');
    return Left(error);
  }
}

typedef AsyncCallback<T> = Future<T> Function();

class Failure {
  Failure(this.title, this.message, {this.statusCode});

  final String title;
  final int? statusCode;
  final String message;

  @override
  String toString() {
    return 'Failure{title: $title, message: $message, statusCocde : $statusCode}';
  }
}

class MessageError extends Failure implements Exception {
  MessageError(super.title, super.message, {super.statusCode});
}
