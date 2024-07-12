// import 'dart:convert';

// // ignore_for_file: public_member_api_docs, sort_constructors_first
// class UsersModel {
//   String fName;
//   String sName;
//   String email;
//   int id;
//   String avatar;
//   UsersModel({
//     required this.fName,
//     required this.sName,
//     required this.email,
//     required this.id,
//     required this.avatar,
//   });
  

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'fName': fName,
//       'sName': sName,
//       'email': email,
//       'id': id,
//       'avatar': avatar,
//     };
//   }

//   factory UsersModel.fromMap(Map<String, dynamic> map) {
//     return UsersModel(
//       fName: map['fName'] as String,
//       sName: map['sName'] as String,
//       email: map['email'] as String,
//       id: map['id'] as int,
//       avatar: map['avatar'] as String,
//     );
//   }

//   // String toJson() => json.encode(toMap());

//   // factory UsersModel.fromJson(String source) => UsersModel.fromMap(json.decode(source) as Map<String, dynamic>);
// }




class UsersModel {
  List<Data>? data;

  UsersModel({this.data});

  UsersModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['avatar'] = this.avatar;
    return data;
  }
}