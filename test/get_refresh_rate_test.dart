import 'package:flutter_test/flutter_test.dart';
import 'package:get_refresh_rate/get_refresh_rate.dart';
import 'package:get_refresh_rate/get_refresh_rate_platform_interface.dart';
import 'package:get_refresh_rate/get_refresh_rate_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGetRefreshRatePlatform
    with MockPlatformInterfaceMixin
    implements GetRefreshRatePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<int> getRefreshRate() {
    // TODO: implement getRefreshRate
    throw UnimplementedError();
  }
}

void main() {
  final GetRefreshRatePlatform initialPlatform = GetRefreshRatePlatform.instance;

  test('$MethodChannelGetRefreshRate is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGetRefreshRate>());
  });

  test('getPlatformVersion', () async {
    GetRefreshRate getRefreshRatePlugin = GetRefreshRate();
    MockGetRefreshRatePlatform fakePlatform = MockGetRefreshRatePlatform();
    GetRefreshRatePlatform.instance = fakePlatform;

    expect(await getRefreshRatePlugin.getPlatformVersion(), '42');
  });
}
