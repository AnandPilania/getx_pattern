import 'package:get/get.dart';
import 'package:getx_pattern/app/http/controllers/splash_controller.dart';
import 'package:getx_pattern/app/providers/api_provider.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
        () => SplashController(Get.find<ApiProvider>()));
  }
}
