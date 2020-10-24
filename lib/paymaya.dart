import 'dart:async';

import 'package:flutter/services.dart';

class Paymaya {
  static const MethodChannel _channel =
      const MethodChannel('paymaya');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
