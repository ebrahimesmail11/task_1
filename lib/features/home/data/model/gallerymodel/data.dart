import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final List<String>? images;

  const Data({this.images});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        images: json['images'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'images': images,
      };

  @override
  List<Object?> get props => [images];
}
