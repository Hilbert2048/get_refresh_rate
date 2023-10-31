#ifndef FLUTTER_PLUGIN_GET_REFRESH_RATE_PLUGIN_H_
#define FLUTTER_PLUGIN_GET_REFRESH_RATE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace get_refresh_rate {

class GetRefreshRatePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  GetRefreshRatePlugin();

  virtual ~GetRefreshRatePlugin();

  // Disallow copy and assign.
  GetRefreshRatePlugin(const GetRefreshRatePlugin&) = delete;
  GetRefreshRatePlugin& operator=(const GetRefreshRatePlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace get_refresh_rate

#endif  // FLUTTER_PLUGIN_GET_REFRESH_RATE_PLUGIN_H_
