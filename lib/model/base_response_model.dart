import 'package:equatable/equatable.dart';

final class BaseResponseModel<T> extends Equatable {
  final T? data;
  final bool? isSuccess;
  final String? message;

  const BaseResponseModel({
    this.data,
    this.isSuccess,
    this.message,
  });

  @override
  List<Object?> get props => [
        data,
        isSuccess,
        message,
      ];
}
