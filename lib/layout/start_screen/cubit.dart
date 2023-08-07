import 'package:cash_money/layout/start_screen/state.dart';
import 'package:bloc/bloc.dart';

class QesCubit extends Cubit<QesState>{
  QesCubit() : super(QesInitialState());

  static QesCubit get (context) => BlockProvider.of(context);
}



class BlockProvider {
  static of(context) {}
}
