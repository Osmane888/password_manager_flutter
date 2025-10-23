class AppeUserModel {
  
  final String uid;
  final String email;
  final String displayName;

  AppeUserModel({
    required this.uid, 
    required this.email, 
    required this.displayName
    });

  
  AppeUserModel copyWith({
    String? uid,
    String? email,
    String? displayName
  }) { return AppeUserModel(
        uid: uid ?? this.uid,
        email: email ?? this.email,
        displayName: displayName ?? this.displayName
      );
    }

  Map<String, String> toMap(){
    return {
      'uid' : uid,
      'email' : email,
      'displayName' : displayName
    };
  }

  factory AppeUserModel.fromMap(Map<String, String> map) {
    return AppeUserModel(
       uid: map['uid'] ?? '', 
       email: map['email'] ?? '', 
       displayName: map['displayName'] ?? ''
    );
  }
}