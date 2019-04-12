package com.example.plugin_with_protobuf

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

fun getMyChildren(): PersonOuterClass.Person {
  return PersonOuterClass.Person.newBuilder()
          .setName("Thach")
          .addAddressesList(
                  PersonOuterClass.Address.newBuilder()
                          .setCity("Hamilton")
                          .setProvince(PersonOuterClass.Province.ON)
                          .build()
          )
          .addChildrenList(
                  PersonOuterClass.Person.newBuilder()
                          .setName("Liam")
                          .addAddressesList(
                                  PersonOuterClass.Address.newBuilder()
                                          .setCity("Toronto")
                                          .setProvince(PersonOuterClass.Province.ON)
                                          .build()
                          )
                          .build()
          )
          .build()
}

class PluginWithProtobufPlugin: MethodCallHandler {
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "plugin_with_protobuf")
      channel.setMethodCallHandler(PluginWithProtobufPlugin())
    }
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else if (call.method == "getMyChildren") {
      try {
        result.success(getMyChildren().toByteArray())
      } catch (e: Exception) {
        result.error("Cannot serialize data", null, null)
      }
    } else {
      result.notImplemented()
    }
  }
}
