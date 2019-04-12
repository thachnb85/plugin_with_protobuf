///
//  Generated code. Do not modify.
//  source: protos/person.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'person.pbenum.dart';

export 'person.pbenum.dart';

class Person extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Person')
    ..aOS(1, 'name')
    ..pc<Address>(2, 'addressesList', $pb.PbFieldType.PM,Address.create)
    ..pc<Person>(3, 'childrenList', $pb.PbFieldType.PM,Person.create)
    ..hasRequiredFields = false
  ;

  Person() : super();
  Person.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Person.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Person clone() => Person()..mergeFromMessage(this);
  Person copyWith(void Function(Person) updates) => super.copyWith((message) => updates(message as Person));
  $pb.BuilderInfo get info_ => _i;
  static Person create() => Person();
  Person createEmptyInstance() => create();
  static $pb.PbList<Person> createRepeated() => $pb.PbList<Person>();
  static Person getDefault() => _defaultInstance ??= create()..freeze();
  static Person _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.List<Address> get addressesList => $_getList(1);

  $core.List<Person> get childrenList => $_getList(2);
}

class Address extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Address')
    ..aOS(1, 'streetName')
    ..aOS(2, 'city')
    ..e<Province>(3, 'province', $pb.PbFieldType.OE, Province.NL, Province.valueOf, Province.values)
    ..a<$core.int>(4, 'postalCode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Address() : super();
  Address.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Address.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Address clone() => Address()..mergeFromMessage(this);
  Address copyWith(void Function(Address) updates) => super.copyWith((message) => updates(message as Address));
  $pb.BuilderInfo get info_ => _i;
  static Address create() => Address();
  Address createEmptyInstance() => create();
  static $pb.PbList<Address> createRepeated() => $pb.PbList<Address>();
  static Address getDefault() => _defaultInstance ??= create()..freeze();
  static Address _defaultInstance;

  $core.String get streetName => $_getS(0, '');
  set streetName($core.String v) { $_setString(0, v); }
  $core.bool hasStreetName() => $_has(0);
  void clearStreetName() => clearField(1);

  $core.String get city => $_getS(1, '');
  set city($core.String v) { $_setString(1, v); }
  $core.bool hasCity() => $_has(1);
  void clearCity() => clearField(2);

  Province get province => $_getN(2);
  set province(Province v) { setField(3, v); }
  $core.bool hasProvince() => $_has(2);
  void clearProvince() => clearField(3);

  $core.int get postalCode => $_get(3, 0);
  set postalCode($core.int v) { $_setUnsignedInt32(3, v); }
  $core.bool hasPostalCode() => $_has(3);
  void clearPostalCode() => clearField(4);
}

