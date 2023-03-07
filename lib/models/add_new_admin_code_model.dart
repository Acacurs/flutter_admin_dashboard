class AddNewAdminCodeModel {
  final String? code;

  AddNewAdminCodeModel({required this.code});

  factory AddNewAdminCodeModel.fromMap(Map<String, dynamic> data) {
    String? code = data['code'];

    return AddNewAdminCodeModel(
      code: code,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
    };
  }
}
