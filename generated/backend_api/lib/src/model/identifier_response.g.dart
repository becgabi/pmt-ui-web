// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identifier_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdentifierResponse extends IdentifierResponse {
  @override
  final int? id;

  factory _$IdentifierResponse(
          [void Function(IdentifierResponseBuilder)? updates]) =>
      (new IdentifierResponseBuilder()..update(updates)).build();

  _$IdentifierResponse._({this.id}) : super._();

  @override
  IdentifierResponse rebuild(
          void Function(IdentifierResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentifierResponseBuilder toBuilder() =>
      new IdentifierResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentifierResponse && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IdentifierResponse')..add('id', id))
        .toString();
  }
}

class IdentifierResponseBuilder
    implements Builder<IdentifierResponse, IdentifierResponseBuilder> {
  _$IdentifierResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  IdentifierResponseBuilder() {
    IdentifierResponse._defaults(this);
  }

  IdentifierResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdentifierResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdentifierResponse;
  }

  @override
  void update(void Function(IdentifierResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IdentifierResponse build() {
    final _$result = _$v ?? new _$IdentifierResponse._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
