class UserModel {
  int? id;
  String? name;
  String? email;
  String? alamat;
  String? username;
  String? profilePhotoUrl;
  String? token;

  UserModel(
      {this.id,
      this.name,
      this.email,
      this.alamat,
      this.username,
      this.profilePhotoUrl,
      this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    alamat = json['alamat'];
    username = json['username'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['alamat'] = this.alamat;
    data['username'] = this.username;
    data['profile_photo_url'] = this.profilePhotoUrl;
    data['token'] = this.token;
    return data;
  }
}
