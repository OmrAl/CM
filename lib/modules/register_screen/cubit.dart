import 'package:cash_money/modles/register.dart';
import 'package:cash_money/modules/register_screen/states.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:snapshot/snapshot.dart';
//import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;



class RegCubit extends Cubit<RegisterState> {
  RegCubit() : super(RegisterInitialState());

  static RegCubit get(context) => BlocProvider.of(context);

  void userRegister({
    required String? name,
    required String? email,
    required String? password,
    required String? phone,
    required String? credit,
  }) {
    /* if (kDebugMode) {
      print('hello');
    }*/

    emit(RegisterStateReload());

    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    )
        .then((value) {
      userCreate(
        password: password,
        uId: value.user!.uid,
        points: 0,
        counter: 0,
        phone: phone,
        email: email,
        name: name,
        credit: credit,
      );
    }).catchError((error) {
      emit(RegisterStateError(error.toString()));
    });
  }

  void userCreate({
    required int points,
    required int counter,
    required String? name,
    required String? email,
    required String? phone,
    required String? credit,
    required String? uId,
    required String? password,
  }) {
    Regs regs = Regs(
      password: password!,
      name: name!,
      email: email!,
      phone: phone!,
      credit: credit!,
      uId: uId!,
      isEmailVerified: false,
    );

 FirebaseFirestore db = FirebaseFirestore.instance;
        db.collection("users")
        .doc(uId)
        .set(regs.toMap())
        .then((value) {
      emit(RegisterStateSuccess());
    })
        .catchError((error) {
      //print(error.toString());

      emit(RegisterStateError(error.toString()));
    });
  }

  /*void getUsers()
  {
    FirebaseFirestore.instance.collection('Users').get().then((value)
    {
      value.docs.forEach((element)
      {
        Users.add(Regs.fromJson(element.data()));
      });

      emit(GetStateSuccess());
    }).catchError((error) {
      print(error.toString());
      emit(GetStateError(error.toString()));
    });
  }
}*/
  Future <List<Regs>> allUsers() async {
    final db = FirebaseFirestore.instance;
    final snapshot = await db.collection('Users').get();
    final userData = snapshot.docs.map((e) =>
        Regs.fromJson(e as Map<String, dynamic>)).toList();
    return userData;
  }

  Future<Regs> getUsers() async {
    final db = FirebaseFirestore.instance;
    final snapshot = await db.collection('Users')
        .where('email', isEqualTo: '')
        .get();
    final userData = snapshot.docs
        .map((e) => Regs.fromJson(e as Map<String, dynamic>))
        .single;
    return userData;
  }
}