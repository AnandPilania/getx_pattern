import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class BaseController extends GetxController {
  RxBool _isLoading = true.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool v) => _isLoading.value = v;
}
