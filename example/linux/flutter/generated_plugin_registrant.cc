//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <get_refresh_rate/get_refresh_rate_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) get_refresh_rate_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "GetRefreshRatePlugin");
  get_refresh_rate_plugin_register_with_registrar(get_refresh_rate_registrar);
}
