import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'get_refresh_rate_platform_interface.dart';

/// An implementation of [GetRefreshRatePlatform] that uses method channels.
class MethodChannelGetRefreshRate extends GetRefreshRatePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('get_refresh_rate');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<double> getRefreshRate() async {
    final fpsHz = await methodChannel.invokeMethod<double>('getRefreshRate');
    return fpsHz ?? 60;
  }
}
