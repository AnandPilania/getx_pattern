import 'package:get/get.dart';
import 'package:getx_pattern/modules/auth/http/controllers/auth_controller.dart';
import 'package:getx_pattern/modules/auth/providers/auth_provider.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthProvider>(() => AuthProvider());
    Get.lazyPut<AuthController>(() => AuthController(Get.find<AuthProvider>()));
  }
}
