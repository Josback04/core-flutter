import 'package:/core/models/failure.dart';

class MessageError extends Failure implements Exception {
  MessageError(
    super.title,
    super.message,
  );
}
