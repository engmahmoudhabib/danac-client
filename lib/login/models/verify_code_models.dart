class VerifyCodeResponseModel {
  int? userId;

  VerifyCodeResponseModel({this.userId});

  VerifyCodeResponseModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    return data;
  }
}

class VerifyCodeErrorModel {
  String? error;

  VerifyCodeErrorModel({this.error});

  VerifyCodeErrorModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    return data;
  }
}


class VerifyCodeRequestModel {
  int? userId;
  String? phonenumber;

  VerifyCodeRequestModel({this.userId, this.phonenumber});

  VerifyCodeRequestModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    phonenumber = json['phonenumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['phonenumber'] = this.phonenumber;
    return data;
  }
}
