
import 'package:e_commerce/core/network/network_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../utils/Pair.dart';

abstract class BaseViewModel<Event, State> extends Bloc<Event, BaseState<State>>  {
  BaseViewModel(State initialState) : super(BaseState(data: initialState)) {
    on<Event>((Event event, emit) async {
      emit(await handleEvent(event));
    });
  }

  Future<BaseState<State>> handleEvent (Event event) async {
    throw UnimplementedError();
  }
}

class BaseState<T> {
  final T data;
  final bool isLoading;
  final Pair<Exception, String>? error;

  BaseState({required this.data, this.isLoading = true, this.error});

  BaseState<T> copyWith({
    T? data,
    bool? isLoading,
    Pair<Exception, String>? error,
  }) {
    return BaseState<T>(
        data: data ?? this.data,
        isLoading: isLoading ?? this.isLoading,
        error: error ?? this.error
    );
  }

  BaseState<T> handleNetworkResult<R>(
      NetworkResult<R> result,
      T Function(R data) transform
  ) {
    if (result is Success<R>) {
      final finalTransform = transform;
      return copyWith(data: finalTransform(result.data));
    } else {
      final error = result as Error<T>;
      return copyWith(error: Pair(error.exception, error.message));
    }
  }
}
