// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PhaseType _$IMPLEMENTATION = const PhaseType._('IMPLEMENTATION');
const PhaseType _$IMPROVEMENT = const PhaseType._('IMPROVEMENT');
const PhaseType _$SUPPORT = const PhaseType._('SUPPORT');

PhaseType _$valueOf(String name) {
  switch (name) {
    case 'IMPLEMENTATION':
      return _$IMPLEMENTATION;
    case 'IMPROVEMENT':
      return _$IMPROVEMENT;
    case 'SUPPORT':
      return _$SUPPORT;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PhaseType> _$values = new BuiltSet<PhaseType>(const <PhaseType>[
  _$IMPLEMENTATION,
  _$IMPROVEMENT,
  _$SUPPORT,
]);

class _$PhaseTypeMeta {
  const _$PhaseTypeMeta();
  PhaseType get IMPLEMENTATION => _$IMPLEMENTATION;
  PhaseType get IMPROVEMENT => _$IMPROVEMENT;
  PhaseType get SUPPORT => _$SUPPORT;
  PhaseType valueOf(String name) => _$valueOf(name);
  BuiltSet<PhaseType> get values => _$values;
}

abstract class _$PhaseTypeMixin {
  // ignore: non_constant_identifier_names
  _$PhaseTypeMeta get PhaseType => const _$PhaseTypeMeta();
}

Serializer<PhaseType> _$phaseTypeSerializer = new _$PhaseTypeSerializer();

class _$PhaseTypeSerializer implements PrimitiveSerializer<PhaseType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'IMPLEMENTATION': 'IMPLEMENTATION',
    'IMPROVEMENT': 'IMPROVEMENT',
    'SUPPORT': 'SUPPORT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'IMPLEMENTATION': 'IMPLEMENTATION',
    'IMPROVEMENT': 'IMPROVEMENT',
    'SUPPORT': 'SUPPORT',
  };

  @override
  final Iterable<Type> types = const <Type>[PhaseType];
  @override
  final String wireName = 'PhaseType';

  @override
  Object serialize(Serializers serializers, PhaseType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PhaseType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PhaseType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
