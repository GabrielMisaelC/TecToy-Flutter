import 'package:flutter/services.dart';

class Nfcsdk {
  static const MethodChannel _channel = const MethodChannel('nfcsdk');

  static const LER = "ler";

  Nfcsdk() {
    print('Classe Lamp Iniciada');
  }

  static Future<void> ler() async {
    await _channel.invokeMethod('ler');
  }
}
