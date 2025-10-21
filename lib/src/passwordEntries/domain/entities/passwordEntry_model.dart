class PasswordEntry {
  
  final String uid;
  final String password;
  final String serviceName;
  final String linkedEmail;
  final String userUid;

  PasswordEntry({
    required this.uid,
    required this.password,
    required this.serviceName,
    required this.linkedEmail,
    required this.userUid,
  });


  PasswordEntry copyWith ({
    String? uid,
    String? password,
    String? serviceName,
    String? linkedEmail,
    String? userUid,
  }) {  return PasswordEntry(
          uid : uid ?? this.uid,
          password : password ?? this.password,
          serviceName : serviceName ?? this.serviceName,
          linkedEmail : linkedEmail ?? this.linkedEmail,
          userUid : userUid ?? this.userUid
        );
  }

  Map<String, String> toMap () {
    return {
      'uid' : uid,
      'password' : password,
      'serviceName' : serviceName,
      'linkedEmail' : linkedEmail,
      'userUid' : userUid
    };
  }

  factory PasswordEntry.fromMap (Map<String, String> map) {
    return PasswordEntry(
      uid : map['uid'] ?? '',
      password : map['password'] ?? '',
      serviceName : map['serviceName'] ?? '',
      linkedEmail: map['linkedEmail'] ?? '',
      userUid: map['userUid'] ?? '',
    );
  }
}