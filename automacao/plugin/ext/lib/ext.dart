
import 'dart:async';

import 'package:flutter/services.dart';

class Ext {
  static const MethodChannel _channel = MethodChannel('ext');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
