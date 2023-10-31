#include "include/get_refresh_rate/get_refresh_rate_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "get_refresh_rate_plugin.h"

void GetRefreshRatePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  get_refresh_rate::GetRefreshRatePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
