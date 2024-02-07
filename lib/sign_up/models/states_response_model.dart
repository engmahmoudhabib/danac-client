class StatesResponseModel {
  int? id;
  String? name;
  double? longitude;
  double? latitude;

  StatesResponseModel({this.id, this.name, this.longitude, this.latitude});

  StatesResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    longitude = json['longitude'];
    latitude = json['latitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    return data;
  }
}
