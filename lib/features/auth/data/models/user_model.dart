import '../../../../core/common/entities/user.dart';

class UserModel extends User {
  UserModel({required super.id, required super.fullName, required super.email});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'full_name': fullName,
      'email': email,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      fullName: map['full_name'] as String,
      email: map['email'] as String,
    );
  }

  @override
  String toString() =>
      'UserModel(id: $id, full_name: $fullName, email: $email)';
}
