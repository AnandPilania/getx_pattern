import 'package:get/get.dart';
import 'package:getx_pattern/modules/auth/bindings/auth_binding.dart';
import 'package:getx_pattern/modules/home/bindings/home_binding.dart';
import 'package:getx_pattern/modules/splash/bindings/splash_binding.dart';
import 'package:getx_pattern/app/http/middlewares/authenticated_middleware.dart';
import 'package:getx_pattern/app/http/middlewares/guest_middleware.dart';
import 'package:getx_pattern/core/middlewares/root_middleware.dart';
import 'package:getx_pattern/modules/auth/views/forgot_password_view.dart';
import 'package:getx_pattern/modules/auth/views/login_view.dart';
import 'package:getx_pattern/modules/auth/views/register_view.dart';
import 'package:getx_pattern/modules/auth/views/auth_view.dart';
import 'package:getx_pattern/modules/home/views/home_view.dart';
import 'package:getx_pattern/modules/splash/views/splash_view.dart';
import 'package:getx_pattern/widgets/views/root_view.dart';
import 'package:getx_pattern/widgets/views/unknown_view.dart';

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
