import 'package:get/get.dart';
import 'package:getx_pattern/core/middlewares/root_middleware.dart';

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
      page: EmptyPage(),
    ),
    GetPage(
      name: SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: HOME,
      page: () => HomePage(),
      middlewares: [
        AuthenticatedMiddleware(),
      ],
      binding: HomeBinding(),
    ),
    GetPage(
      name: AUTH,
      page: () => AuthPage(),
      middlewares: [
        GuestMiddleware(),
      ],
      children: [
        GetPage(
          name: 'login',
          page: () => LoginView(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: 'register',
          page: () => RegisterView(),
          binding: RegisterBinding(),
        ),
        GetPage(
          name: '/password/forgot',
          page: () => ForgotPasswordView(),
          binding: ForgotPasswordBinding(),
        ),
      ],
    ),
  ];

  static GetPage unknownRoute = GetPage(
    name: UNKNOWN,
    page: () => UnknownView(),
  );
}
