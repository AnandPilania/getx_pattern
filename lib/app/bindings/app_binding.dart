import 'package:get/get.dart';
import 'package:getx_pattern/app/providers/api_provider.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ApiProvider>(ApiProvider(), permanent: true);
  }
}
