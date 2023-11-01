import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'get_refresh_rate_method_channel.dart';

abstract class GetRefreshRatePlatform extends PlatformInterface {
  /// Constructs a GetRefreshRatePlatform.
  GetRefreshRatePlatform() : super(token: _token);

  static final Object _token = Object();

  static GetRefreshRatePlatform _instance = MethodChannelGetRefreshRate();

  /// The default instance of [GetRefreshRatePlatform] to use.
  ///
  /// Defaults to [MethodChannelGetRefreshRate].
  static GetRefreshRatePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GetRefreshRatePlatform] when
  /// they register themselves.
  static set instance(GetRefreshRatePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<int> getRefreshRate() {
    throw UnimplementedError('getRefreshRate() has not been implemented.');
  }
}
