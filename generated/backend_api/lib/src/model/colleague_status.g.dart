// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colleague_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ColleagueStatus _$ACTIVE = const ColleagueStatus._('ACTIVE');
const ColleagueStatus _$INACTIVE = const ColleagueStatus._('INACTIVE');
const ColleagueStatus _$LEFT = const ColleagueStatus._('LEFT');

ColleagueStatus _$valueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$ACTIVE;
    case 'INACTIVE':
      return _$INACTIVE;
    case 'LEFT':
      return _$LEFT;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ColleagueStatus> _$values =
    new BuiltSet<ColleagueStatus>(const <ColleagueStatus>[
  _$ACTIVE,
  _$INACTIVE,
  _$LEFT,
]);

class _$ColleagueStatusMeta {
  const _$ColleagueStatusMeta();
  ColleagueStatus get ACTIVE => _$ACTIVE;
  ColleagueStatus get INACTIVE => _$INACTIVE;
  ColleagueStatus get LEFT => _$LEFT;
  ColleagueStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<ColleagueStatus> get values => _$values;
}

abstract class _$ColleagueStatusMixin {
  // ignore: non_constant_identifier_names
  _$ColleagueStatusMeta get ColleagueStatus => const _$ColleagueStatusMeta();
}

Serializer<ColleagueStatus> _$colleagueStatusSerializer =
    new _$ColleagueStatusSerializer();

class _$ColleagueStatusSerializer
    implements PrimitiveSerializer<ColleagueStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACTIVE': 'ACTIVE',
    'INACTIVE': 'INACTIVE',
    'LEFT': 'LEFT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACTIVE': 'ACTIVE',
    'INACTIVE': 'INACTIVE',
    'LEFT': 'LEFT',
  };

  @override
  final Iterable<Type> types = const <Type>[ColleagueStatus];
  @override
  final String wireName = 'ColleagueStatus';

  @override
  Object serialize(Serializers serializers, ColleagueStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ColleagueStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ColleagueStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
