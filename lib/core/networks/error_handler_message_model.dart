import 'package:equatable/equatable.dart';

class ErrorHandlerMessageModel extends Equatable {
  final int statusCode;
  final String statusMessage;
  final bool isSuccess;

  const ErrorHandlerMessageModel({
    required this.statusCode,
    required this.statusMessage,
    required this.isSuccess,
  });

  factory ErrorHandlerMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorHandlerMessageModel(
      statusCode: json['status_code'],
      statusMessage: json['status_message'],
      isSuccess: json['success'],
    );
  }

  @override
  List<Object?> get props => [statusCode, statusMessage, isSuccess].toList();
}
