import 'package:cash_money/modules/login_screen/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;



class LoginCubit extends Cubit<LoginState>{
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get (context) => BlocProvider.of(context);

  void login({
    required String email,
    required String password,
  }) async
  {
    emit(LoginStateReload());

    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password).then((value){

       // print(value.user?.email);


       // print(value.user?.uid);

      emit(LoginStateSuccess(value.user!.uid));

    }).catchError((error) {
      emit(LoginStateError(error.toString()));
    });
  }
}


