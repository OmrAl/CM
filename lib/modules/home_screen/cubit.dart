import 'package:cash_money/modules/home_screen/states.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../modles/register.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  late Regs regs;

  void getUserData() async {
    if (kDebugMode) {
      print('hello');
    }

    emit(HomeStateReload());

    FirebaseFirestore.instance
        .collection('users')
        .doc(regs.uId)
        .get()
        .then((value) {
      if (kDebugMode) {
        print(value.data());
      }
      // regs = Regs.fromJson(value.data);
      emit(HomeStateSuccess());
    })
        .catchError((error) {
      if (kDebugMode) {
        print(error.toString());
      }
      emit(HomeStateError(error.toString()));
    });
  }
}


