// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_item_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BalanceItemStatus _$PENDING = const BalanceItemStatus._('PENDING');
const BalanceItemStatus _$APPROVED = const BalanceItemStatus._('APPROVED');
const BalanceItemStatus _$REJECTED = const BalanceItemStatus._('REJECTED');

BalanceItemStatus _$valueOf(String name) {
  switch (name) {
    case 'PENDING':
      return _$PENDING;
    case 'APPROVED':
      return _$APPROVED;
    case 'REJECTED':
      return _$REJECTED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<BalanceItemStatus> _$values =
    new BuiltSet<BalanceItemStatus>(const <BalanceItemStatus>[
  _$PENDING,
  _$APPROVED,
  _$REJECTED,
]);

class _$BalanceItemStatusMeta {
  const _$BalanceItemStatusMeta();
  BalanceItemStatus get PENDING => _$PENDING;
  BalanceItemStatus get APPROVED => _$APPROVED;
  BalanceItemStatus get REJECTED => _$REJECTED;
  BalanceItemStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<BalanceItemStatus> get values => _$values;
}

abstract class _$BalanceItemStatusMixin {
  // ignore: non_constant_identifier_names
  _$BalanceItemStatusMeta get BalanceItemStatus =>
      const _$BalanceItemStatusMeta();
}

Serializer<BalanceItemStatus> _$balanceItemStatusSerializer =
    new _$BalanceItemStatusSerializer();

class _$BalanceItemStatusSerializer
    implements PrimitiveSerializer<BalanceItemStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PENDING': 'PENDING',
    'APPROVED': 'APPROVED',
    'REJECTED': 'REJECTED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PENDING': 'PENDING',
    'APPROVED': 'APPROVED',
    'REJECTED': 'REJECTED',
  };

  @override
  final Iterable<Type> types = const <Type>[BalanceItemStatus];
  @override
  final String wireName = 'BalanceItemStatus';

  @override
  Object serialize(Serializers serializers, BalanceItemStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BalanceItemStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BalanceItemStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
