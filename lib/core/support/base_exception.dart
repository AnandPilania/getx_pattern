class BaseException implements Exception {
  final _message;
  final _prefix;

  BaseException([this._message, this._prefix]);

  String toString() {
    return '$_prefix$_message';
  }
}
