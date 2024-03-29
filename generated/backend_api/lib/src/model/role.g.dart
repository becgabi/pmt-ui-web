// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Role _$DIRECTOR = const Role._('DIRECTOR');
const Role _$COLLEAGUE = const Role._('COLLEAGUE');

Role _$valueOf(String name) {
  switch (name) {
    case 'DIRECTOR':
      return _$DIRECTOR;
    case 'COLLEAGUE':
      return _$COLLEAGUE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Role> _$values = new BuiltSet<Role>(const <Role>[
  _$DIRECTOR,
  _$COLLEAGUE,
]);

class _$RoleMeta {
  const _$RoleMeta();
  Role get DIRECTOR => _$DIRECTOR;
  Role get COLLEAGUE => _$COLLEAGUE;
  Role valueOf(String name) => _$valueOf(name);
  BuiltSet<Role> get values => _$values;
}

abstract class _$RoleMixin {
  // ignore: non_constant_identifier_names
  _$RoleMeta get Role => const _$RoleMeta();
}

Serializer<Role> _$roleSerializer = new _$RoleSerializer();

class _$RoleSerializer implements PrimitiveSerializer<Role> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DIRECTOR': 'DIRECTOR',
    'COLLEAGUE': 'COLLEAGUE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DIRECTOR': 'DIRECTOR',
    'COLLEAGUE': 'COLLEAGUE',
  };

  @override
  final Iterable<Type> types = const <Type>[Role];
  @override
  final String wireName = 'Role';

  @override
  Object serialize(Serializers serializers, Role object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Role deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Role.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
