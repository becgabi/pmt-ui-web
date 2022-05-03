//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'colleague_type.g.dart';

class ColleagueType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'EMPLOYEE')
  static const ColleagueType EMPLOYEE = _$EMPLOYEE;
  @BuiltValueEnumConst(wireName: r'CONTRACTOR')
  static const ColleagueType CONTRACTOR = _$CONTRACTOR;
  @BuiltValueEnumConst(wireName: r'HYBRID')
  static const ColleagueType HYBRID = _$HYBRID;

  static Serializer<ColleagueType> get serializer => _$colleagueTypeSerializer;

  const ColleagueType._(String name): super(name);

  static BuiltSet<ColleagueType> get values => _$values;
  static ColleagueType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ColleagueTypeMixin = Object with _$ColleagueTypeMixin;

