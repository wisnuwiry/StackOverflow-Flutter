import 'package:cubit/cubit.dart';


class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  void getHome() => emit(0);
  void getQuestions() => emit(1);
  void getTasks() => emit(2);
  void getUsers() => emit(3);
  void getSetting() => emit(4);
}
