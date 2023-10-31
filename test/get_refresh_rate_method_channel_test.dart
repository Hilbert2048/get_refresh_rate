import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_refresh_rate/get_refresh_rate_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelGetRefreshRate platform = MethodChannelGetRefreshRate();
  const MethodChannel channel = MethodChannel('get_refresh_rate');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
