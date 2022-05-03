//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'phase_type.g.dart';

class PhaseType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'IMPLEMENTATION')
  static const PhaseType IMPLEMENTATION = _$IMPLEMENTATION;
  @BuiltValueEnumConst(wireName: r'IMPROVEMENT')
  static const PhaseType IMPROVEMENT = _$IMPROVEMENT;
  @BuiltValueEnumConst(wireName: r'SUPPORT')
  static const PhaseType SUPPORT = _$SUPPORT;

  static Serializer<PhaseType> get serializer => _$phaseTypeSerializer;

  const PhaseType._(String name): super(name);

  static BuiltSet<PhaseType> get values => _$values;
  static PhaseType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PhaseTypeMixin = Object with _$PhaseTypeMixin;

