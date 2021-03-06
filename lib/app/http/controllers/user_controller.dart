import 'package:get/get.dart';
import 'package:getx_pattern/app/exceptions/server_exception.dart';
import 'package:getx_pattern/app/exceptions/user_not_found_exception.dart';
import 'package:getx_pattern/app/http/requests/user_request.dart';
import 'package:getx_pattern/app/models/user.dart';
import 'package:getx_pattern/app/providers/api_provider.dart';
import 'package:getx_pattern/core/support/base_controller.dart';

class UserController extends BaseController {
  ApiProvider _provider;
  UserController(this._provider);

  Rxn<User> fetchedUser = Rxn<User>();

  User? getUser(int id) {
    isLoading = true;
    _provider.getUser(UserRequest(id: id)).then((r) {
      isLoading = true;

      if (r.status.isNotFound) {
        return throw UserNotFoundException();
      } else if (r.status.hasError) {
        return throw ServerException();
      } else {
        return fetchedUser.value = r.body;
      }
    });
  }
}
