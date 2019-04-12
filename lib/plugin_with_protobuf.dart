import 'dart:async';
import 'dart:typed_data' show Uint8List; // for get raw data.

import 'package:flutter/services.dart';
import 'package:plugin_with_protobuf/gen/protos/person.pb.dart' show Person;
export 'package:plugin_with_protobuf/gen/protos/person.pb.dart' show Person, Address;

class PluginWithProtobuf {
  static const MethodChannel _channel =
      const MethodChannel('plugin_with_protobuf');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<Person> get myChildren async {
    final Uint8List rawData = await _channel.invokeMethod('getMyChildren');
    final Person person = Person.fromBuffer(rawData);
    return person;
  }
}
