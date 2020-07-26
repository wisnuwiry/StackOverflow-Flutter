import 'package:cubit/cubit.dart';

/// Cubit Observer, can show event transition in cubit
class AppCubitObserver extends CubitObserver {
  @override
  void onTransition(Cubit cubit, Transition transition) {
    print('${cubit.runtimeType} $transition');
    super.onTransition(cubit, transition);
  }
}