//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'settlement_mode.g.dart';

class SettlementMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'T_AND_M')
  static const SettlementMode T_AND_M = _$T_AND_M;
  @BuiltValueEnumConst(wireName: r'SPRINT_COMMITMENT')
  static const SettlementMode SPRINT_COMMITMENT = _$SPRINT_COMMITMENT;
  @BuiltValueEnumConst(wireName: r'PROJECT_BASED')
  static const SettlementMode PROJECT_BASED = _$PROJECT_BASED;

  static Serializer<SettlementMode> get serializer => _$settlementModeSerializer;

  const SettlementMode._(String name): super(name);

  static BuiltSet<SettlementMode> get values => _$values;
  static SettlementMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SettlementModeMixin = Object with _$SettlementModeMixin;

