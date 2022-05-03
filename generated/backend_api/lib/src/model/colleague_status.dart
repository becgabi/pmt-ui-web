//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'colleague_status.g.dart';

class ColleagueStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const ColleagueStatus ACTIVE = _$ACTIVE;
  @BuiltValueEnumConst(wireName: r'INACTIVE')
  static const ColleagueStatus INACTIVE = _$INACTIVE;
  @BuiltValueEnumConst(wireName: r'LEFT')
  static const ColleagueStatus LEFT = _$LEFT;

  static Serializer<ColleagueStatus> get serializer => _$colleagueStatusSerializer;

  const ColleagueStatus._(String name): super(name);

  static BuiltSet<ColleagueStatus> get values => _$values;
  static ColleagueStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ColleagueStatusMixin = Object with _$ColleagueStatusMixin;

