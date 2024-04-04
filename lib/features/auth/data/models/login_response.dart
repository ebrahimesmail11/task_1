import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: "user")
  UserData? userData;
  String? token;
  LoginResponse({this.userData, this.token});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? id;
  String? email;
  @JsonKey(name: "name")
  String? displayName;
  String? createdAt;
  String? updatedAt;
  UserData(
      {this.id, this.email, this.displayName, this.createdAt, this.updatedAt});
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
