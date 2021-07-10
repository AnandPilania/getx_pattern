import 'package:get/get.dart';
import 'package:getx_pattern/app/http/requests/auth/forgot_password_request.dart';
import 'package:getx_pattern/app/http/requests/auth/login_request.dart';
import 'package:getx_pattern/app/http/requests/auth/register_request.dart';
import 'package:getx_pattern/app/http/requests/user_request.dart';
import 'package:getx_pattern/app/models/user.dart';
import 'package:getx_pattern/config/app_constants.dart';
import 'package:getx_pattern/core/support/base_provider.dart';

class ApiProvider extends BaseProvider {
  Future<Response<User>> getUser(UserRequest _userRequest) =>
      get('${AppConstants.API_USER}/${_userRequest.id}',
          decoder: (r) => User.fromJson(r));

  Future<Response<User>> login(LoginRequest loginRequest) =>
      post(AppConstants.API_LOGIN, loginRequest);

  Future<Response<User>> register(RegisterRequest registerRequest) =>
      post(AppConstants.API_LOGIN, registerRequest);

  Future<Response<User>> forgotPassword(
          ForgotPasswordRequest forgotPasswordRequest) =>
      post(AppConstants.API_LOGIN, forgotPasswordRequest);
}
