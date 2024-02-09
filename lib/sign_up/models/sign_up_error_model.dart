class SignUpErrorModel {
  List<dynamic>? phonenumber;

  List<dynamic>? username;
  List<dynamic>? password;
  List<dynamic>? password2;
  List<dynamic>? x;
  List<dynamic>? y;
  List<dynamic>? storeName;
  List<dynamic>? workHours;
  List<dynamic>? town;
  List<dynamic>? address;

  SignUpErrorModel({
    this.phonenumber,

    this.username,
    this.password,
    this.password2,
    this.x,
    this.y,
    this.storeName,
    this.workHours,
    this.town,
    this.address,
  });

  SignUpErrorModel.fromJson(Map<String, dynamic> json) {
    phonenumber = json['phonenumber'];

    username = json['username'];
    password = json['password'];
    password2 = json['password2'];
    x = json['x'];
    y = json['y'];
    storeName = json['store_name'];
    workHours = json['work_hours'];
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
    data['town'] = this.town;
    data['address'] = this.address;
    return data;
  }
}
