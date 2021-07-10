import 'package:get/get.dart';
import 'package:getx_pattern/app/http/middlewares/authenticated_middleware.dart';
import 'package:getx_pattern/app/http/middlewares/guest_middleware.dart';
import 'package:getx_pattern/core/middlewares/root_middleware.dart';
import 'package:getx_pattern/resources/views/auth/forgot_password_view.dart';
import 'package:getx_pattern/resources/views/auth/login_view.dart';
import 'package:getx_pattern/resources/views/auth/register_view.dart';
import 'package:getx_pattern/resources/views/auth_view.dart';
import 'package:getx_pattern/resources/views/errors/unknown_view.dart';
import 'package:getx_pattern/resources/views/home_view.dart';
import 'package:getx_pattern/resources/views/root_view.dart';
import 'package:getx_pattern/resources/views/splash_view.dart';

class Routes {
  static const String ROOT = '/';

  static const String SPLASH = '/splash';
  static const String HOME = '/home';

  static const String AUTH = '/auth';
  static const String LOGIN = '/auth/login';
  static const String REGISTER = '/auth/register';
  static const String FORGOt_PASSWORd = '/auth/password/forgot';

  static const String UNKNOWN = '/error/404';

  static List<GetPage> pages = [
    GetPage(
      name: ROOT,
      middlewares: [
        RootMiddleware(),
      ],
      page: () => RootView(),
    ),
    GetPage(
      name: SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: HOME,
      page: () => HomeView(),
      middlewares: [
        AuthenticatedMiddleware(),
      ],
      binding: HomeBinding(),
    ),
    GetPage(
      name: AUTH,
      page: () => AuthView(),
      middlewares: [
        GuestMiddleware(),
      ],
      binding: AuthBinding(),
      children: [
        GetPage(
          name: 'login',
          page: () => LoginView(),
        ),
        GetPage(
          name: 'register',
          page: () => RegisterView(),
        ),
        GetPage(
          name: '/password/forgot',
          page: () => ForgotPasswordView(),
        ),
      ],
    ),
  ];

  static GetPage unknownRoute = GetPage(
    name: UNKNOWN,
    page: () => UnknownView(),
  );
}
