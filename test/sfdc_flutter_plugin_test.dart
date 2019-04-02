import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sfdc_flutter_plugin/sfdc_flutter_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('sfdc_flutter_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SfdcFlutterPlugin.platformVersion, '42');
  });
}
