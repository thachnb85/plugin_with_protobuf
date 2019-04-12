///
//  Generated code. Do not modify.
//  source: protos/person.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class Province extends $pb.ProtobufEnum {
  static const Province NL = Province._(0, 'NL');
  static const Province PE = Province._(1, 'PE');
  static const Province NS = Province._(2, 'NS');
  static const Province NB = Province._(3, 'NB');
  static const Province QC = Province._(4, 'QC');
  static const Province ON = Province._(5, 'ON');
  static const Province MB = Province._(6, 'MB');
  static const Province SK = Province._(7, 'SK');
  static const Province AB = Province._(8, 'AB');
  static const Province BC = Province._(9, 'BC');
  static const Province YT = Province._(10, 'YT');
  static const Province NT = Province._(11, 'NT');
  static const Province NU = Province._(12, 'NU');

  static const $core.List<Province> values = <Province> [
    NL,
    PE,
    NS,
    NB,
    QC,
    ON,
    MB,
    SK,
    AB,
    BC,
    YT,
    NT,
    NU,
  ];

  static final $core.Map<$core.int, Province> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Province valueOf($core.int value) => _byValue[value];

  const Province._($core.int v, $core.String n) : super(v, n);
}

