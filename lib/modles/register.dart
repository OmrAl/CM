import 'package:cloud_firestore/cloud_firestore.dart';

class Regs {
   late final String name;
   late final String email;
   late final String password;
   late final String phone;
   late final String credit;
   late final String uId;
   late final int points;
   late final int counter;
   late final bool isEmailVerified;


  Regs({
    required this.uId,
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
    required this.credit,
    required this.isEmailVerified,

  });

  factory Regs.fromSnapshot(DocumentSnapshot<Map<String , dynamic>> document){
    final data = document.data()!;
    return Regs(uId: document.id,
        email: data[""],
        password: 'password',
        name: 'name',
        phone: 'phone',
        credit: 'credit',
        isEmailVerified: false);
  }

  Regs.fromJson(Map<String , dynamic>json)
  {
    email = json['email'];
    password = json['password'];
    name = json['name'];
    phone = json['phone'];
    credit = json['credit'];
    isEmailVerified = json['isEmailVerified'];
    uId = json['uId'];

    points = json['points'];
    counter = json['counter'];

  }

  Map<String , dynamic> toMap(){
    return{
      'name':name,
      'email': email,
      'password': password,
      'phone': phone,
      'isEmailVerified': isEmailVerified,
      'uId': uId,
      'points': points,
      'counter': counter,
    };
  }
}