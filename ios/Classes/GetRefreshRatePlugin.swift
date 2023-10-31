import Flutter
import UIKit

public class GetRefreshRatePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "get_refresh_rate", binaryMessenger: registrar.messenger())
    let instance = GetRefreshRatePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getRefreshRate":
      result(Double(UIScreen.main.maximumFramesPerSecond))
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
