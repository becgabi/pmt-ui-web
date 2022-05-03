// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colleague_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ColleagueType _$EMPLOYEE = const ColleagueType._('EMPLOYEE');
const ColleagueType _$CONTRACTOR = const ColleagueType._('CONTRACTOR');
const ColleagueType _$HYBRID = const ColleagueType._('HYBRID');

ColleagueType _$valueOf(String name) {
  switch (name) {
    case 'EMPLOYEE':
      return _$EMPLOYEE;
    case 'CONTRACTOR':
      return _$CONTRACTOR;
    case 'HYBRID':
      return _$HYBRID;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ColleagueType> _$values =
    new BuiltSet<ColleagueType>(const <ColleagueType>[
  _$EMPLOYEE,
  _$CONTRACTOR,
  _$HYBRID,
]);

class _$ColleagueTypeMeta {
  const _$ColleagueTypeMeta();
  ColleagueType get EMPLOYEE => _$EMPLOYEE;
  ColleagueType get CONTRACTOR => _$CONTRACTOR;
  ColleagueType get HYBRID => _$HYBRID;
  ColleagueType valueOf(String name) => _$valueOf(name);
  BuiltSet<ColleagueType> get values => _$values;
}

abstract class _$ColleagueTypeMixin {
  // ignore: non_constant_identifier_names
  _$ColleagueTypeMeta get ColleagueType => const _$ColleagueTypeMeta();
}

Serializer<ColleagueType> _$colleagueTypeSerializer =
    new _$ColleagueTypeSerializer();

class _$ColleagueTypeSerializer implements PrimitiveSerializer<ColleagueType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EMPLOYEE': 'EMPLOYEE',
    'CONTRACTOR': 'CONTRACTOR',
    'HYBRID': 'HYBRID',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EMPLOYEE': 'EMPLOYEE',
    'CONTRACTOR': 'CONTRACTOR',
    'HYBRID': 'HYBRID',
  };

  @override
  final Iterable<Type> types = const <Type>[ColleagueType];
  @override
  final String wireName = 'ColleagueType';

  @override
  Object serialize(Serializers serializers, ColleagueType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ColleagueType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ColleagueType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
