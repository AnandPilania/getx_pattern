import 'package:getx_pattern/core/support/base_exception.dart';

class UserNotFoundException extends BaseException {
  UserNotFoundException([message]) : super(message, 'User not found!');
}
