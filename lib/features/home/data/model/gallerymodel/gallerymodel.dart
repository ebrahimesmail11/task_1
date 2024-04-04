import 'package:equatable/equatable.dart';

import 'data.dart';

class Gallerymodel extends Equatable {
  final String? status;
  final Data? data;
  final String? message;

  const Gallerymodel({this.status, this.data, this.message});

  factory Gallerymodel.fromJson(Map<String, dynamic> json) => Gallerymodel(
        status: json['status'] as String?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
        message: json['message'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'data': data?.toJson(),
        'message': message,
      };

  @override
  List<Object?> get props => [status, data, message];
}
