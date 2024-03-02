import 'package:bloc/bloc.dart';


class SelectionCategoryCubit extends Cubit<int> {
  SelectionCategoryCubit() : super((0));

  int currentIndex = 0;

  changeIndex(int index) {
    emit(currentIndex = index);
  }
}
