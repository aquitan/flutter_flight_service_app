import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class Users {
  const Users(this.username, this.email, this.phone, this.id, this.name);

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final String? phone;

  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
