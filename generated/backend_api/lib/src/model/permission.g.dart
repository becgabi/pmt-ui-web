// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Permission _$SETTING_VIEW = const Permission._('SETTING_VIEW');
const Permission _$SETTING_EDIT = const Permission._('SETTING_EDIT');
const Permission _$COLLEAGUE_VIEW = const Permission._('COLLEAGUE_VIEW');
const Permission _$COLLEAGUE_EDIT = const Permission._('COLLEAGUE_EDIT');
const Permission _$PARTNER_VIEW = const Permission._('PARTNER_VIEW');
const Permission _$PARTNER_EDIT = const Permission._('PARTNER_EDIT');
const Permission _$PROJECT_VIEW = const Permission._('PROJECT_VIEW');
const Permission _$PROJECT_EDIT = const Permission._('PROJECT_EDIT');

Permission _$valueOf(String name) {
  switch (name) {
    case 'SETTING_VIEW':
      return _$SETTING_VIEW;
    case 'SETTING_EDIT':
      return _$SETTING_EDIT;
    case 'COLLEAGUE_VIEW':
      return _$COLLEAGUE_VIEW;
    case 'COLLEAGUE_EDIT':
      return _$COLLEAGUE_EDIT;
    case 'PARTNER_VIEW':
      return _$PARTNER_VIEW;
    case 'PARTNER_EDIT':
      return _$PARTNER_EDIT;
    case 'PROJECT_VIEW':
      return _$PROJECT_VIEW;
    case 'PROJECT_EDIT':
      return _$PROJECT_EDIT;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Permission> _$values =
    new BuiltSet<Permission>(const <Permission>[
  _$SETTING_VIEW,
  _$SETTING_EDIT,
  _$COLLEAGUE_VIEW,
  _$COLLEAGUE_EDIT,
  _$PARTNER_VIEW,
  _$PARTNER_EDIT,
  _$PROJECT_VIEW,
  _$PROJECT_EDIT,
]);

class _$PermissionMeta {
  const _$PermissionMeta();
  Permission get SETTING_VIEW => _$SETTING_VIEW;
  Permission get SETTING_EDIT => _$SETTING_EDIT;
  Permission get COLLEAGUE_VIEW => _$COLLEAGUE_VIEW;
  Permission get COLLEAGUE_EDIT => _$COLLEAGUE_EDIT;
  Permission get PARTNER_VIEW => _$PARTNER_VIEW;
  Permission get PARTNER_EDIT => _$PARTNER_EDIT;
  Permission get PROJECT_VIEW => _$PROJECT_VIEW;
  Permission get PROJECT_EDIT => _$PROJECT_EDIT;
  Permission valueOf(String name) => _$valueOf(name);
  BuiltSet<Permission> get values => _$values;
}

abstract class _$PermissionMixin {
  // ignore: non_constant_identifier_names
  _$PermissionMeta get Permission => const _$PermissionMeta();
}

Serializer<Permission> _$permissionSerializer = new _$PermissionSerializer();

class _$PermissionSerializer implements PrimitiveSerializer<Permission> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SETTING_VIEW': 'SETTING_VIEW',
    'SETTING_EDIT': 'SETTING_EDIT',
    'COLLEAGUE_VIEW': 'COLLEAGUE_VIEW',
    'COLLEAGUE_EDIT': 'COLLEAGUE_EDIT',
    'PARTNER_VIEW': 'PARTNER_VIEW',
    'PARTNER_EDIT': 'PARTNER_EDIT',
    'PROJECT_VIEW': 'PROJECT_VIEW',
    'PROJECT_EDIT': 'PROJECT_EDIT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SETTING_VIEW': 'SETTING_VIEW',
    'SETTING_EDIT': 'SETTING_EDIT',
    'COLLEAGUE_VIEW': 'COLLEAGUE_VIEW',
    'COLLEAGUE_EDIT': 'COLLEAGUE_EDIT',
    'PARTNER_VIEW': 'PARTNER_VIEW',
    'PARTNER_EDIT': 'PARTNER_EDIT',
    'PROJECT_VIEW': 'PROJECT_VIEW',
    'PROJECT_EDIT': 'PROJECT_EDIT',
  };

  @override
  final Iterable<Type> types = const <Type>[Permission];
  @override
  final String wireName = 'Permission';

  @override
  Object serialize(Serializers serializers, Permission object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Permission deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Permission.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
