import '../../../../core/common/entities/user.dart';

class UserModel extends User {
  UserModel({required super.id, required super.username, required super.email});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'email': email,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      username: map['username'] as String,
      email: map['email'] as String,
    );
  }

  @override
  String toString() => 'UserModel(id: $id, username: $username, email: $email)';
}
