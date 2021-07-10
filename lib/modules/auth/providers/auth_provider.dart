import 'package:get/get.dart';
import 'package:getx_pattern/app/models/user.dart';
import 'package:getx_pattern/config/app_constants.dart';
import 'package:getx_pattern/core/support/base_provider.dart';
import 'package:getx_pattern/modules/auth/http/requests/forgot_password_request.dart';
import 'package:getx_pattern/modules/auth/http/requests/login_request.dart';
import 'package:getx_pattern/modules/auth/http/requests/register_request.dart';

class AuthProvider extends BaseProvider {
  Future<Response<User>> login(LoginRequest loginRequest) =>
      post(AppConstants.API_LOGIN, loginRequest);

  Future<Response<User>> register(RegisterRequest registerRequest) =>
      post(AppConstants.API_LOGIN, registerRequest);

  Future<Response<User>> forgotPassword(
          ForgotPasswordRequest forgotPasswordRequest) =>
      post(AppConstants.API_LOGIN, forgotPasswordRequest);
}
