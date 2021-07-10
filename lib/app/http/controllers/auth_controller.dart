import 'package:getx_pattern/app/exceptions/server_exception.dart';
import 'package:getx_pattern/app/http/requests/auth/forgot_password_request.dart';
import 'package:getx_pattern/app/http/requests/auth/login_request.dart';
import 'package:getx_pattern/app/http/requests/auth/register_request.dart';
import 'package:getx_pattern/app/providers/api_provider.dart';
import 'package:getx_pattern/core/helpers.dart';
import 'package:getx_pattern/core/support/base_controller.dart';

class AuthController extends BaseController {
  ApiProvider _provider;
  AuthController(this._provider);

  void login() async {
    isLoading = true;
    await _provider
        .login(LoginRequest(email: 'email', password: 'password'))
        .then((r) {
      isLoading = false;

      if (r.status.isServerError) {
        return throw ServerException();
      } else if (r.status.hasError) {
        return throw ServerException();
      } else {
        app().user = r.body;
      }
    });
  }

  void register() async {
    isLoading = true;
    await _provider
        .register(RegisterRequest(email: 'email', password: 'password'))
        .then((r) {
      isLoading = false;

      if (r.status.isServerError) {
        return throw ServerException();
      } else if (r.status.hasError) {
        return throw ServerException();
      } else {
        app().user = r.body;
      }
    });
  }

  void forgotPassword() async {
    isLoading = true;
    await _provider
        .forgotPassword(ForgotPasswordRequest(email: 'email'))
        .then((r) {
      isLoading = false;

      if (r.status.isServerError) {
        return throw ServerException();
      } else if (r.status.hasError) {
        return throw ServerException();
      } else {
        //
      }
    });
  }

  void logout() {
    app().user = null;
  }
}
