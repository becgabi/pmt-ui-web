// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cooperation_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CooperationStatus _$ACTIVE = const CooperationStatus._('ACTIVE');
const CooperationStatus _$INACTIVE = const CooperationStatus._('INACTIVE');
const CooperationStatus _$CLOSED = const CooperationStatus._('CLOSED');

CooperationStatus _$valueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$ACTIVE;
    case 'INACTIVE':
      return _$INACTIVE;
    case 'CLOSED':
      return _$CLOSED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CooperationStatus> _$values =
    new BuiltSet<CooperationStatus>(const <CooperationStatus>[
  _$ACTIVE,
  _$INACTIVE,
  _$CLOSED,
]);

class _$CooperationStatusMeta {
  const _$CooperationStatusMeta();
  CooperationStatus get ACTIVE => _$ACTIVE;
  CooperationStatus get INACTIVE => _$INACTIVE;
  CooperationStatus get CLOSED => _$CLOSED;
  CooperationStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<CooperationStatus> get values => _$values;
}

abstract class _$CooperationStatusMixin {
  // ignore: non_constant_identifier_names
  _$CooperationStatusMeta get CooperationStatus =>
      const _$CooperationStatusMeta();
}

Serializer<CooperationStatus> _$cooperationStatusSerializer =
    new _$CooperationStatusSerializer();

class _$CooperationStatusSerializer
    implements PrimitiveSerializer<CooperationStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACTIVE': 'ACTIVE',
    'INACTIVE': 'INACTIVE',
    'CLOSED': 'CLOSED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACTIVE': 'ACTIVE',
    'INACTIVE': 'INACTIVE',
    'CLOSED': 'CLOSED',
  };

  @override
  final Iterable<Type> types = const <Type>[CooperationStatus];
  @override
  final String wireName = 'CooperationStatus';

  @override
  Object serialize(Serializers serializers, CooperationStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CooperationStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CooperationStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
