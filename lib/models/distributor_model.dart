class RegistrationModel {
  String? name;
  String? phone;
  String? email;
  String? panNo;
  String? profession;
  String? city;
  String? state;
  String? code;

  RegistrationModel(this.name, this.phone, this.email, this.state, this.code,
      this.city, this.panNo, this.profession);

  RegistrationModel.fromJson(Map<String, dynamic> json) {
   name = json['name'];
   phone = json['phone'];
   email = json['email'];
   panNo = json['panNo'];
   profession = json['profession'];
   city = json['city'];
   state = json['state'];
   code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['panNo'] = this.panNo;
    data['profession'] = this.profession;
    data['city'] = this.city;
    data['state'] = this.state;
    data['code'] = this.code;
    return data;
  }
}
