package com.example.runway_fashion_app

import io.flutter.embedding.android.FlutterActivity

import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

import android.os.Build
import android.content.Context
import android.os.BatteryManager

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.e"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "getDataFromAndroid" -> {
                    val data = "Hello from Kotlin!"
                    result.success(data)
                }
                "getAndroidVersion" -> {
                    val version = Build.VERSION.RELEASE
                    result.success(version)
                }

                "getBatteryLevel" -> {
                    val batteryLevel = getBatteryLevel()
                    if (batteryLevel != -1) {
                    val  batteryLevelString =  batteryLevel.toString();
                        result.success(batteryLevel.toString())
                    } else {
                        result.error("UNAVAILABLE", "Could not get battery level", null)
                    }
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun getBatteryLevel(): Int {
        val batteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
        return batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
    }
}