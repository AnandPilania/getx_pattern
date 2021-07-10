import 'package:getx_pattern/app/exceptions/server_exception.dart';
import 'package:getx_pattern/modules/auth/http/requests/forgot_password_request.dart';
import 'package:getx_pattern/modules/auth/http/requests/login_request.dart';
import 'package:getx_pattern/modules/auth/http/requests/register_request.dart';
import 'package:getx_pattern/core/helpers.dart';
import 'package:getx_pattern/core/support/base_controller.dart';
import 'package:getx_pattern/modules/auth/providers/auth_provider.dart';

class AuthController extends BaseController {
  AuthProvider _provider;
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
