import 'package:cash_money/layout/qes_screen/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartCubit  extends Cubit <AnsState>{
  StartCubit() : super(AnsInitialState());

  static StartCubit get (context) => BlocProvider.of(context);

}




