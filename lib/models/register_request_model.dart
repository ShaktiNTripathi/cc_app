class RegisterRequestModel {
  RegisterRequestModel({
    this.uid,
    this.name,
    this.password,
    this.email,
  });
  late final String? uid;
  late final String? name;
  late final String? password;
  late final String? email;

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    uid = json['username'];
    password = json['password'];
    email = json['email'];
    name = json['uname'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = uid;
    data['password'] = password;
    data['email'] = email;
    data['uname'] = name;
    return data;
  }
}
