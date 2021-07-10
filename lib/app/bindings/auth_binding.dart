import 'package:get/get.dart';
import 'package:getx_pattern/app/http/controllers/auth_controller.dart';
import 'package:getx_pattern/app/providers/api_provider.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController(Get.find<ApiProvider>()));
  }
}
