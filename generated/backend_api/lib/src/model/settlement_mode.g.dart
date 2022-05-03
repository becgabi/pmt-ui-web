// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlement_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SettlementMode _$T_AND_M = const SettlementMode._('T_AND_M');
const SettlementMode _$SPRINT_COMMITMENT =
    const SettlementMode._('SPRINT_COMMITMENT');
const SettlementMode _$PROJECT_BASED = const SettlementMode._('PROJECT_BASED');

SettlementMode _$valueOf(String name) {
  switch (name) {
    case 'T_AND_M':
      return _$T_AND_M;
    case 'SPRINT_COMMITMENT':
      return _$SPRINT_COMMITMENT;
    case 'PROJECT_BASED':
      return _$PROJECT_BASED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SettlementMode> _$values =
    new BuiltSet<SettlementMode>(const <SettlementMode>[
  _$T_AND_M,
  _$SPRINT_COMMITMENT,
  _$PROJECT_BASED,
]);

class _$SettlementModeMeta {
  const _$SettlementModeMeta();
  SettlementMode get T_AND_M => _$T_AND_M;
  SettlementMode get SPRINT_COMMITMENT => _$SPRINT_COMMITMENT;
  SettlementMode get PROJECT_BASED => _$PROJECT_BASED;
  SettlementMode valueOf(String name) => _$valueOf(name);
  BuiltSet<SettlementMode> get values => _$values;
}

abstract class _$SettlementModeMixin {
  // ignore: non_constant_identifier_names
  _$SettlementModeMeta get SettlementMode => const _$SettlementModeMeta();
}

Serializer<SettlementMode> _$settlementModeSerializer =
    new _$SettlementModeSerializer();

class _$SettlementModeSerializer
    implements PrimitiveSerializer<SettlementMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'T_AND_M': 'T_AND_M',
    'SPRINT_COMMITMENT': 'SPRINT_COMMITMENT',
    'PROJECT_BASED': 'PROJECT_BASED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'T_AND_M': 'T_AND_M',
    'SPRINT_COMMITMENT': 'SPRINT_COMMITMENT',
    'PROJECT_BASED': 'PROJECT_BASED',
  };

  @override
  final Iterable<Type> types = const <Type>[SettlementMode];
  @override
  final String wireName = 'SettlementMode';

  @override
  Object serialize(Serializers serializers, SettlementMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SettlementMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SettlementMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
