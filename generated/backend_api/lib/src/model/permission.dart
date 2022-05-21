//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission.g.dart';

class Permission extends EnumClass {

  @BuiltValueEnumConst(wireName: r'SETTING_VIEW')
  static const Permission SETTING_VIEW = _$SETTING_VIEW;
  @BuiltValueEnumConst(wireName: r'SETTING_EDIT')
  static const Permission SETTING_EDIT = _$SETTING_EDIT;
  @BuiltValueEnumConst(wireName: r'COLLEAGUE_VIEW')
  static const Permission COLLEAGUE_VIEW = _$COLLEAGUE_VIEW;
  @BuiltValueEnumConst(wireName: r'COLLEAGUE_EDIT')
  static const Permission COLLEAGUE_EDIT = _$COLLEAGUE_EDIT;
  @BuiltValueEnumConst(wireName: r'PARTNER_VIEW')
  static const Permission PARTNER_VIEW = _$PARTNER_VIEW;
  @BuiltValueEnumConst(wireName: r'PARTNER_EDIT')
  static const Permission PARTNER_EDIT = _$PARTNER_EDIT;
  @BuiltValueEnumConst(wireName: r'PROJECT_VIEW')
  static const Permission PROJECT_VIEW = _$PROJECT_VIEW;
  @BuiltValueEnumConst(wireName: r'PROJECT_EDIT')
  static const Permission PROJECT_EDIT = _$PROJECT_EDIT;
  @BuiltValueEnumConst(wireName: r'TIME_SHEET_VIEW')
  static const Permission TIME_SHEET_VIEW = _$TIME_SHEET_VIEW;
  @BuiltValueEnumConst(wireName: r'TIME_SHEET_EDIT')
  static const Permission TIME_SHEET_EDIT = _$TIME_SHEET_EDIT;

  static Serializer<Permission> get serializer => _$permissionSerializer;

  const Permission._(String name): super(name);

  static BuiltSet<Permission> get values => _$values;
  static Permission valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PermissionMixin = Object with _$PermissionMixin;

