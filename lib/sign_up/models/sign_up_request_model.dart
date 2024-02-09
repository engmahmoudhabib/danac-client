class SignUpRequestModel {
  String? phonenumber;

  String? username;
  String? password;
  String? password2;
  String? x;
  String? y;
  String? storeName;
  String? workHours;
  String? state;
  String? town;
  String? address;
  String? deviceToken;
  String? deviceType;

  SignUpRequestModel({
    this.phonenumber,
    this.username,
    this.password,
    this.password2,
    this.x,
    this.y,
    this.storeName,
    this.workHours,
    this.state,
    this.town,
    this.address,
    this.deviceToken,
    this.deviceType,
  });

  SignUpRequestModel.fromJson(Map<String, dynamic> json) {
    phonenumber = json['phonenumber'];
    username = json['username'];
    password = json['password'];
    password2 = json['password2'];
    x = json['x'];
    y = json['y'];
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
    data['password'] = this.password;
    data['password2'] = this.password2;
    data['x'] = this.x;
    data['y'] = this.y;
    data['store_name'] = this.storeName;
    data['work_hours'] = this.workHours;
    data['state'] = this.state;
    data['town'] = this.town;
    data['address'] = this.address;
    data['device_token'] = this.deviceToken;
    data['device_type'] = this.deviceType;
    return data;
  }
}
