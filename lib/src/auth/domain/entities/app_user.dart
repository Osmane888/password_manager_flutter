class AppUser {
  
  final String uid;
  final String email;
  final String displayName;

  AppUser({
    required this.uid, 
    required this.email, 
    required this.displayName
    });

  
  AppUser copyWith(
    String? uid,
    String? email,
    String? displayName
  ) {
    return AppUser(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName
    );
  }

}