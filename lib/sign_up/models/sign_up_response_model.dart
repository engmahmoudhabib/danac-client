class SignUpResponseModel {
  InformationUser? informationUser;
  Tokens? tokens;

  SignUpResponseModel({this.informationUser, this.tokens});

  SignUpResponseModel.fromJson(Map<String, dynamic> json) {
    informationUser = json['information_user'] != null
        ? new InformationUser.fromJson(json['information_user'])
        : null;
    tokens =
        json['tokens'] != null ? new Tokens.fromJson(json['tokens']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.informationUser != null) {
      data['information_user'] = this.informationUser!.toJson();
    }
    if (this.tokens != null) {
      data['tokens'] = this.tokens!.toJson();
    }
    return data;
  }
}

class InformationUser {
  String? phonenumber;
  String? username;
  String? storeName;
  String? workHours;
  String? state;
  String? town;
  String? address;

  InformationUser(
      {this.phonenumber,
      this.username,
      this.storeName,
      this.workHours,
      this.state,
      this.town,
      this.address});

  InformationUser.fromJson(Map<String, dynamic> json) {
    phonenumber = json['phonenumber'];
    username = json['username'];
    storeName = json['store_name'];
    workHours = json['work_hours'];
    state = json['state'];
    town = json['town'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phonenumber'] = this.phonenumber;
    data['username'] = this.username;
    data['store_name'] = this.storeName;
    data['work_hours'] = this.workHours;
    data['state'] = this.state;
    data['town'] = this.town;
    data['address'] = this.address;
    return data;
  }
}

class Tokens {
  String? refresh;
  String? accsess;

  Tokens({this.refresh, this.accsess});

  Tokens.fromJson(Map<String, dynamic> json) {
    refresh = json['refresh'];
    accsess = json['accsess'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['refresh'] = this.refresh;
    data['accsess'] = this.accsess;
    return data;
  }
}
