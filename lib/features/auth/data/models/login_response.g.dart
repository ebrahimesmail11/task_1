// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      userData: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'user': instance.userData,
      'token': instance.token,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      id: json['id'] as String?,
      email: json['email'] as String?,
      displayName: json['name'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.displayName,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
