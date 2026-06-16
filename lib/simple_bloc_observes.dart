import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    debugPrint('change = $change');
    super.onChange(bloc, change);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    debugPrint('close = $bloc');
    super.onClose(bloc);
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    debugPrint('create = $bloc');
    super.onCreate(bloc);
  }

  @override
  void onDone(
      Bloc<dynamic, dynamic> bloc,
      Object? event, [
        Object? error,
        StackTrace? stackTrace,
      ]) {
    super.onDone(bloc, event, error, stackTrace);
  }

  @override
  void onError(
      BlocBase<dynamic> bloc,
      Object error,
      StackTrace stackTrace,
      ) {
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(
      Bloc<dynamic, dynamic> bloc,
      Transition<dynamic, dynamic> transition,
      ) {
    super.onTransition(bloc, transition);
  }
}