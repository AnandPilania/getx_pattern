import 'package:getx_pattern/core/support/base_exception.dart';

class ServerException extends BaseException {
  ServerException([message]) : super(message, 'Server Error');
}
