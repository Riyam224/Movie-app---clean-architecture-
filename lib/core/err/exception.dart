import 'package:clean_arch_movie_app/core/networks/error_handler_message_model.dart';

// todo. rmeote data source
class ServerException implements Exception {
  final ErrorHandlerMessageModel? errorHandlerMessageModel;
  const ServerException(this.errorHandlerMessageModel);
}

// todo for local data source
class LocalException implements Exception {
  final ErrorHandlerMessageModel? errorHandlerMessageModel;
  const LocalException(this.errorHandlerMessageModel);
}
