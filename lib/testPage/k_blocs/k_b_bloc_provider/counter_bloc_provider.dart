// async gives you a future
// async* gives you a strem

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocProvider extends Bloc<String, int> {
  CounterBlocProvider() : super(0);

  int _counter = 0;

  int get counter => _counter;

  @override
  Stream<int> mapEventToState(event) async* {
    if (event == "add") {
      _counter++;
    } else {
      _counter--;
    }

    // return _counter;
    yield _counter;
  }
}
