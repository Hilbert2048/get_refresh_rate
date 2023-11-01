import 'get_refresh_rate_platform_interface.dart';

class GetRefreshRate {
  Future<String?> getPlatformVersion() {
    return GetRefreshRatePlatform.instance.getPlatformVersion();
  }

  /// 默认为60帧，以手机的实际刷新帧率为准
  Future<int> getRefreshRate() async {
    return GetRefreshRatePlatform.instance.getRefreshRate();
  }
}


