
sealed class NetworkResult<T> {}

class Error<T> extends NetworkResult<T> {
  final String message;
  final Exception exception;
  Error(this.message, this.exception);
}

class Success<T> extends NetworkResult<T> {
  final T data;
  Success(this.data);
}