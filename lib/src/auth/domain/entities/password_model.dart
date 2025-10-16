class PasswordModel {
  
  final String uid;
  final String password;
  final String serviceName;
  final String linkedEmail;

  PasswordModel({
    required this.uid,
    required this.password,
    required this.serviceName,
    required this.linkedEmail,
  });


  PasswordModel copyWith ({
    String? uid,
    String? password,
    String? serviceName,
    String? linkedEmail
  }) {  return PasswordModel(
          uid : uid ?? this.uid,
          password : password ?? this.password,
          serviceName : serviceName ?? this.serviceName,
          linkedEmail : linkedEmail ?? this.linkedEmail
        );
      }
  
}