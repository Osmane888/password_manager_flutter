class PasswordEntryModel {
  
  final String uid;
  final String password;
  final String serviceName;
  final String linkedEmail;

  PasswordEntryModel({
    required this.uid,
    required this.password,
    required this.serviceName,
    required this.linkedEmail,
  });


  PasswordEntryModel copyWith ({
    String? uid,
    String? password,
    String? serviceName,
    String? linkedEmail
  }) {  return PasswordEntryModel(
          uid : uid ?? this.uid,
          password : password ?? this.password,
          serviceName : serviceName ?? this.serviceName,
          linkedEmail : linkedEmail ?? this.linkedEmail
        );
  }

  Map<String, String> toMap () {
    return {
      'uid' : uid,
      'password' : password,
      'serviceName' : serviceName,
      'linkedEmail' : linkedEmail
    };
  }

  factory PasswordEntryModel.fromMap (Map<String, String> map) {
    return PasswordEntryModel(
      uid : map['uid'] ?? '',
      password : map['password'] ?? '',
      serviceName : map['serviceName'] ?? '',
      linkedEmail: map['linkedEmail'] ?? ''
    );
  }
}