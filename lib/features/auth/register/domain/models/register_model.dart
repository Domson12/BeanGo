import 'package:json_annotation/json_annotation.dart';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel {
  RegisterModel({
    required this.email,
    required this.password,
    required this.name,
  });

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);

  final String email;
  final String password;
  final String name;
}
