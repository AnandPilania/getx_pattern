import 'package:get/get.dart';
import 'package:getx_pattern/app/http/requests/UserRequest.dart';
import 'package:getx_pattern/app/models/user.dart';
import 'package:getx_pattern/config/app_constants.dart';
import 'package:getx_pattern/core/support/base_provider.dart';

class ApiProvider extends BaseProvider {
  Future<Response<User>> getUser(UserRequest _userRequest) =>
      get('${AppConstants.API_USER}/${_userRequest.id}',
          decoder: (r) => User.fromJson(r));
}
