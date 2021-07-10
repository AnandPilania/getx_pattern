import 'package:get/get_connect/connect.dart';
import 'package:getx_pattern/config/app_constants.dart';

abstract class BaseProvider extends GetConnect {
  @override
  void onInit() {
    super.onInit();

    httpClient.baseUrl = AppConstants.apiBaseUrl;
  }
}
