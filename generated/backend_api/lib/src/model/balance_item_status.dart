//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance_item_status.g.dart';

class BalanceItemStatus extends EnumClass {

  /// The status of a BalanceItem
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const BalanceItemStatus PENDING = _$PENDING;
  /// The status of a BalanceItem
  @BuiltValueEnumConst(wireName: r'APPROVED')
  static const BalanceItemStatus APPROVED = _$APPROVED;
  /// The status of a BalanceItem
  @BuiltValueEnumConst(wireName: r'REJECTED')
  static const BalanceItemStatus REJECTED = _$REJECTED;

  static Serializer<BalanceItemStatus> get serializer => _$balanceItemStatusSerializer;

  const BalanceItemStatus._(String name): super(name);

  static BuiltSet<BalanceItemStatus> get values => _$values;
  static BalanceItemStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class BalanceItemStatusMixin = Object with _$BalanceItemStatusMixin;

