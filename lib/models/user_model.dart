class AdminModel {
  String? uid, roles,displayName, bio, photoUrl;

  AdminModel(
      {required this.uid,
      this.displayName,
      this.photoUrl,
      this.bio,
      this.roles});
  factory AdminModel.fromMap(Map<String?, dynamic> data, String? documentId) {
    String? uid = data['uid'];
    String? displayName = data['displayName'];
    String? photoUrl = data['photoUrl'];
    String? bio = data['bio'];
    String? roles = data["roles"];
    return AdminModel(
      uid: uid,
      displayName: displayName,
      bio: bio,
      photoUrl: photoUrl,
      roles: roles,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'roles': roles,
      'bio': bio,
      'displayName': displayName,
      'photoUrl': photoUrl,
    };
  }
}
