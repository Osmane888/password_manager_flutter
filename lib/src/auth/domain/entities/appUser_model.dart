class AppuserModel {
  
  final String uid;
  final String email;
  final String displayName;

  AppuserModel({
    required this.uid, 
    required this.email, 
    required this.displayName
    });

  
  AppuserModel copyWith(
    String? uid,
    String? email,
    String? displayName
  ) {
    return AppuserModel(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName
    );
  }

}