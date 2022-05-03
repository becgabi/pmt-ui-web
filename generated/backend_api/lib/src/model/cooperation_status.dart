//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cooperation_status.g.dart';

class CooperationStatus extends EnumClass {

  /// The status of the cooperation with the partner
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const CooperationStatus ACTIVE = _$ACTIVE;
  /// The status of the cooperation with the partner
  @BuiltValueEnumConst(wireName: r'INACTIVE')
  static const CooperationStatus INACTIVE = _$INACTIVE;
  /// The status of the cooperation with the partner
  @BuiltValueEnumConst(wireName: r'CLOSED')
  static const CooperationStatus CLOSED = _$CLOSED;

  static Serializer<CooperationStatus> get serializer => _$cooperationStatusSerializer;

  const CooperationStatus._(String name): super(name);

  static BuiltSet<CooperationStatus> get values => _$values;
  static CooperationStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CooperationStatusMixin = Object with _$CooperationStatusMixin;

