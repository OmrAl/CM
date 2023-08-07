import 'package:cash_money/layout/settings_screen/state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../modles/register.dart';
//import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;


class SettCubit extends Cubit<SettingsState> {
  SettCubit() : super(SettInitialState());

  static SettCubit get(context) => BlocProvider.of(context);

  void updateUserData({
    required String name,
    required String email,
    required String password,
    required String phone,
    required String credit,
}) {
    Regs regs = Regs(
      name: 'name',
      email: 'email',
      password: 'password',
      phone: 'phone',
      uId: '',
      credit: 'credit',
      isEmailVerified: false,
    );


    FirebaseFirestore.instance
        .collection('users')
        .doc('uId')
        .update(regs.toMap())
        .then((value) {
      emit(SettStateSuccess());
    })
        .catchError((error) {
        print(error.toString());

      emit(SettStateError(error.toString()));
    });
  }

  getUserData(){

  }
}
